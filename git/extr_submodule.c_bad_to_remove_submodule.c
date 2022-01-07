
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct child_process {int git_cmd; int no_stdin; int out; char const* dir; int env_array; int args; } ;
typedef int ssize_t ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 unsigned int SUBMODULE_REMOVAL_DIE_ON_ERROR ;
 unsigned int SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED ;
 unsigned int SUBMODULE_REMOVAL_IGNORE_UNTRACKED ;
 int _ (char*) ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushl (int *,char*,char*,char*,int *) ;
 int close (int) ;
 int die (int ,char const*) ;
 int file_exists (char const*) ;
 scalar_t__ finish_command (struct child_process*) ;
 scalar_t__ is_empty_dir (char const*) ;
 int prepare_submodule_repo_env (int *) ;
 scalar_t__ start_command (struct child_process*) ;
 int strbuf_read (struct strbuf*,int,int) ;
 int strbuf_release (struct strbuf*) ;
 int submodule_uses_gitfile (char const*) ;

int bad_to_remove_submodule(const char *path, unsigned flags)
{
 ssize_t len;
 struct child_process cp = CHILD_PROCESS_INIT;
 struct strbuf buf = STRBUF_INIT;
 int ret = 0;

 if (!file_exists(path) || is_empty_dir(path))
  return 0;

 if (!submodule_uses_gitfile(path))
  return 1;

 argv_array_pushl(&cp.args, "status", "--porcelain",
       "--ignore-submodules=none", ((void*)0));

 if (flags & SUBMODULE_REMOVAL_IGNORE_UNTRACKED)
  argv_array_push(&cp.args, "-uno");
 else
  argv_array_push(&cp.args, "-uall");

 if (!(flags & SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED))
  argv_array_push(&cp.args, "--ignored");

 prepare_submodule_repo_env(&cp.env_array);
 cp.git_cmd = 1;
 cp.no_stdin = 1;
 cp.out = -1;
 cp.dir = path;
 if (start_command(&cp)) {
  if (flags & SUBMODULE_REMOVAL_DIE_ON_ERROR)
   die(_("could not start 'git status' in submodule '%s'"),
    path);
  ret = -1;
  goto out;
 }

 len = strbuf_read(&buf, cp.out, 1024);
 if (len > 2)
  ret = 1;
 close(cp.out);

 if (finish_command(&cp)) {
  if (flags & SUBMODULE_REMOVAL_DIE_ON_ERROR)
   die(_("could not run 'git status' in submodule '%s'"),
    path);
  ret = -1;
 }
out:
 strbuf_release(&buf);
 return ret;
}
