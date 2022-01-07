
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int name; } ;
struct strbuf {int buf; } ;
struct child_process {char const* dir; int git_cmd; int no_stdin; int env_array; int args; } ;


 unsigned int ABSORB_GITDIR_RECURSE_SUBMODULES ;
 int BUG (char*) ;
 struct child_process CHILD_PROCESS_INIT ;
 int READ_GITFILE_ERR_NOT_A_REPO ;
 int READ_GITFILE_ERR_STAT_FAILED ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int argv_array_pushl (int *,char*,int ,char*,char*,int *) ;
 int connect_work_tree_and_git_dir (char const*,int ,int ) ;
 int die (int ,char const*) ;
 int free (char*) ;
 char const* get_git_common_dir () ;
 char const* get_super_prefix_or_empty () ;
 int git_path (char*,int ) ;
 int null_oid ;
 int prepare_submodule_repo_env (int *) ;
 int read_gitfile_error_die (int,char const*,int *) ;
 char* real_pathdup (char const*,int) ;
 int relocate_single_git_dir_into_superproject (char const*) ;
 char* resolve_gitdir_gently (int ,int*) ;
 scalar_t__ run_command (struct child_process*) ;
 int starts_with (char*,char*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 struct submodule* submodule_from_path (int ,int *,char const*) ;
 int the_repository ;

void absorb_git_dir_into_superproject(const char *path,
          unsigned flags)
{
 int err_code;
 const char *sub_git_dir;
 struct strbuf gitdir = STRBUF_INIT;
 strbuf_addf(&gitdir, "%s/.git", path);
 sub_git_dir = resolve_gitdir_gently(gitdir.buf, &err_code);


 if (!sub_git_dir) {
  const struct submodule *sub;

  if (err_code == READ_GITFILE_ERR_STAT_FAILED) {

   strbuf_release(&gitdir);
   return;
  }

  if (err_code != READ_GITFILE_ERR_NOT_A_REPO)

   read_gitfile_error_die(err_code, path, ((void*)0));
  sub = submodule_from_path(the_repository, &null_oid, path);
  if (!sub)
   die(_("could not lookup name for submodule '%s'"), path);
  connect_work_tree_and_git_dir(path,
   git_path("modules/%s", sub->name), 0);
 } else {

  char *real_sub_git_dir = real_pathdup(sub_git_dir, 1);
  char *real_common_git_dir = real_pathdup(get_git_common_dir(), 1);

  if (!starts_with(real_sub_git_dir, real_common_git_dir))
   relocate_single_git_dir_into_superproject(path);

  free(real_sub_git_dir);
  free(real_common_git_dir);
 }
 strbuf_release(&gitdir);

 if (flags & ABSORB_GITDIR_RECURSE_SUBMODULES) {
  struct child_process cp = CHILD_PROCESS_INIT;
  struct strbuf sb = STRBUF_INIT;

  if (flags & ~ABSORB_GITDIR_RECURSE_SUBMODULES)
   BUG("we don't know how to pass the flags down?");

  strbuf_addstr(&sb, get_super_prefix_or_empty());
  strbuf_addstr(&sb, path);
  strbuf_addch(&sb, '/');

  cp.dir = path;
  cp.git_cmd = 1;
  cp.no_stdin = 1;
  argv_array_pushl(&cp.args, "--super-prefix", sb.buf,
        "submodule--helper",
        "absorb-git-dirs", ((void*)0));
  prepare_submodule_repo_env(&cp.env_array);
  if (run_command(&cp))
   die(_("could not recurse into submodule '%s'"), path);

  strbuf_release(&sb);
 }
}
