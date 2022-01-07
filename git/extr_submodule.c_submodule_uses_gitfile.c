
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct child_process {char const** argv; int git_cmd; int no_stdin; int no_stderr; int no_stdout; char const* dir; int env_array; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int prepare_submodule_repo_env (int *) ;
 char* read_gitfile (int ) ;
 scalar_t__ run_command (struct child_process*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;

int submodule_uses_gitfile(const char *path)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 const char *argv[] = {
  "submodule",
  "foreach",
  "--quiet",
  "--recursive",
  "test -f .git",
  ((void*)0),
 };
 struct strbuf buf = STRBUF_INIT;
 const char *git_dir;

 strbuf_addf(&buf, "%s/.git", path);
 git_dir = read_gitfile(buf.buf);
 if (!git_dir) {
  strbuf_release(&buf);
  return 0;
 }
 strbuf_release(&buf);


 cp.argv = argv;
 prepare_submodule_repo_env(&cp.env_array);
 cp.git_cmd = 1;
 cp.no_stdin = 1;
 cp.no_stderr = 1;
 cp.no_stdout = 1;
 cp.dir = path;
 if (run_command(&cp))
  return 0;

 return 1;
}
