
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct child_process {int no_stdin; int no_stderr; int out; int git_cmd; int args; int env_array; } ;
typedef scalar_t__ ssize_t ;


 int BUG (char*) ;
 struct child_process CHILD_PROCESS_INIT ;
 int PATH_MAX ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int argv_array_pop (int *) ;
 int argv_array_pushl (int *,char*,char*,char*,char*,char*,char*,char*,char*,char const*,int *) ;
 int close (int) ;
 int die (int ,...) ;
 int finish_command (struct child_process*) ;
 int free (char*) ;
 int is_inside_work_tree () ;
 int prepare_submodule_repo_env (int *) ;
 char* real_path (char*) ;
 char* real_path_if_valid (char*) ;
 char* relative_path (char const*,char const*,struct strbuf*) ;
 scalar_t__ start_command (struct child_process*) ;
 scalar_t__ starts_with (int ,char*) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 char* strchr (int ,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 char* xgetcwd () ;
 char* xstrdup (char const*) ;

const char *get_superproject_working_tree(void)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 struct strbuf sb = STRBUF_INIT;
 const char *one_up = real_path_if_valid("../");
 const char *cwd = xgetcwd();
 const char *ret = ((void*)0);
 const char *subpath;
 int code;
 ssize_t len;

 if (!is_inside_work_tree())





  return ((void*)0);

 if (!one_up)
  return ((void*)0);

 subpath = relative_path(cwd, one_up, &sb);

 prepare_submodule_repo_env(&cp.env_array);
 argv_array_pop(&cp.env_array);

 argv_array_pushl(&cp.args, "--literal-pathspecs", "-C", "..",
   "ls-files", "-z", "--stage", "--full-name", "--",
   subpath, ((void*)0));
 strbuf_reset(&sb);

 cp.no_stdin = 1;
 cp.no_stderr = 1;
 cp.out = -1;
 cp.git_cmd = 1;

 if (start_command(&cp))
  die(_("could not start ls-files in .."));

 len = strbuf_read(&sb, cp.out, PATH_MAX);
 close(cp.out);

 if (starts_with(sb.buf, "160000")) {
  int super_sub_len;
  int cwd_len = strlen(cwd);
  char *super_sub, *super_wt;






  super_sub = strchr(sb.buf, '\t') + 1;
  super_sub_len = strlen(super_sub);

  if (super_sub_len > cwd_len ||
      strcmp(&cwd[cwd_len - super_sub_len], super_sub))
   BUG("returned path string doesn't match cwd?");

  super_wt = xstrdup(cwd);
  super_wt[cwd_len - super_sub_len] = '\0';

  ret = real_path(super_wt);
  free(super_wt);
 }
 strbuf_release(&sb);

 code = finish_command(&cp);

 if (code == 128)

  return ((void*)0);
 if (code == 0 && len == 0)

  return ((void*)0);
 if (code)
  die(_("ls-tree returned unexpected return code %d"), code);

 return ret;
}
