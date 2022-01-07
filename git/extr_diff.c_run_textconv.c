
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int dummy; } ;
struct diff_tempfile {int name; } ;
struct diff_filespec {int path; } ;
struct child_process {int use_shell; char const** argv; int out; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int close (int) ;
 int error (char*,char const*) ;
 scalar_t__ finish_command (struct child_process*) ;
 struct diff_tempfile* prepare_temp_file (struct repository*,int ,struct diff_filespec*) ;
 int remove_tempfile () ;
 scalar_t__ start_command (struct child_process*) ;
 char* strbuf_detach (struct strbuf*,size_t*) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static char *run_textconv(struct repository *r,
     const char *pgm,
     struct diff_filespec *spec,
     size_t *outsize)
{
 struct diff_tempfile *temp;
 const char *argv[3];
 const char **arg = argv;
 struct child_process child = CHILD_PROCESS_INIT;
 struct strbuf buf = STRBUF_INIT;
 int err = 0;

 temp = prepare_temp_file(r, spec->path, spec);
 *arg++ = pgm;
 *arg++ = temp->name;
 *arg = ((void*)0);

 child.use_shell = 1;
 child.argv = argv;
 child.out = -1;
 if (start_command(&child)) {
  remove_tempfile();
  return ((void*)0);
 }

 if (strbuf_read(&buf, child.out, 0) < 0)
  err = error("error reading from textconv command '%s'", pgm);
 close(child.out);

 if (finish_command(&child) || err) {
  strbuf_release(&buf);
  remove_tempfile();
  return ((void*)0);
 }
 remove_tempfile();

 return strbuf_detach(&buf, outsize);
}
