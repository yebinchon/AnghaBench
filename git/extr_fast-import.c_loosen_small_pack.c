
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int pack_fd; int pack_name; } ;
struct child_process {int git_cmd; int stdout_to_stderr; int args; int in; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int SEEK_SET ;
 int argv_array_push (int *,char*) ;
 int die_errno (char*,int ) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int run_command (struct child_process*) ;
 int show_stats ;

__attribute__((used)) static int loosen_small_pack(const struct packed_git *p)
{
 struct child_process unpack = CHILD_PROCESS_INIT;

 if (lseek(p->pack_fd, 0, SEEK_SET) < 0)
  die_errno("Failed seeking to start of '%s'", p->pack_name);

 unpack.in = p->pack_fd;
 unpack.git_cmd = 1;
 unpack.stdout_to_stderr = 1;
 argv_array_push(&unpack.args, "unpack-objects");
 if (!show_stats)
  argv_array_push(&unpack.args, "-q");

 return run_command(&unpack);
}
