
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_note {int rev_nr; int member_0; } ;
struct object_id {int dummy; } ;
struct child_process {int out; int args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int O_RDONLY ;
 int STDIN_FILENO ;
 int argv_array_push (int *,char const*) ;
 int argv_array_pushf (int *,char*,unsigned int) ;
 int check_or_regenerate_marks (unsigned int) ;
 int close (int) ;
 int die (char*,...) ;
 int die_errno (char*,char*) ;
 scalar_t__ dump_from_file ;
 int finish_command (struct child_process*) ;
 int free (char*) ;
 char* marksfilename ;
 int notes_ref ;
 int open (char*,int ) ;
 scalar_t__ parse_rev_note (char*,struct rev_note*) ;
 int printf (char*,char*,char*) ;
 int private_ref ;
 scalar_t__ read_ref (int ,struct object_id*) ;
 char* read_ref_note (struct object_id*) ;
 int start_command (struct child_process*) ;
 int svndump_deinit () ;
 int svndump_init_fd (int,int ) ;
 int svndump_read (char*,int ,int ) ;
 int svndump_reset () ;
 char* url ;
 int warning (char*,char const*,...) ;

__attribute__((used)) static int cmd_import(const char *line)
{
 int code;
 int dumpin_fd;
 char *note_msg;
 struct object_id head_oid;
 unsigned int startrev;
 struct child_process svndump_proc = CHILD_PROCESS_INIT;
 const char *command = "svnrdump";

 if (read_ref(private_ref, &head_oid))
  startrev = 0;
 else {
  note_msg = read_ref_note(&head_oid);
  if(note_msg == ((void*)0)) {
   warning("No note found for %s.", private_ref);
   startrev = 0;
  } else {
   struct rev_note note = { 0 };
   if (parse_rev_note(note_msg, &note))
    die("Revision number couldn't be parsed from note.");
   startrev = note.rev_nr + 1;
   free(note_msg);
  }
 }
 check_or_regenerate_marks(startrev - 1);

 if (dump_from_file) {
  dumpin_fd = open(url, O_RDONLY);
  if(dumpin_fd < 0)
   die_errno("Couldn't open svn dump file %s.", url);
 } else {
  svndump_proc.out = -1;
  argv_array_push(&svndump_proc.args, command);
  argv_array_push(&svndump_proc.args, "dump");
  argv_array_push(&svndump_proc.args, url);
  argv_array_pushf(&svndump_proc.args, "-r%u:HEAD", startrev);

  code = start_command(&svndump_proc);
  if (code)
   die("Unable to start %s, code %d", command, code);
  dumpin_fd = svndump_proc.out;
 }

 printf("feature import-marks-if-exists=%s\n"
   "feature export-marks=%s\n", marksfilename, marksfilename);

 svndump_init_fd(dumpin_fd, STDIN_FILENO);
 svndump_read(url, private_ref, notes_ref);
 svndump_deinit();
 svndump_reset();

 close(dumpin_fd);
 if (!dump_from_file) {
  code = finish_command(&svndump_proc);
  if (code)
   warning("%s, returned %d", command, code);
 }

 return 0;
}
