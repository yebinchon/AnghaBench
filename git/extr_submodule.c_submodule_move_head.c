
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int name; } ;
struct strbuf {int buf; } ;
struct child_process {int git_cmd; int no_stdin; char const* dir; int args; int env_array; } ;


 int ABSORB_GITDIR_RECURSE_SUBMODULES ;
 int BUG (char*,char const*) ;
 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 unsigned int SUBMODULE_MOVE_HEAD_DRY_RUN ;
 unsigned int SUBMODULE_MOVE_HEAD_FORCE ;
 int _ (char*) ;
 int absorb_git_dir_into_superproject (char const*,int ) ;
 int argv_array_push (int *,char const*) ;
 int argv_array_pushf (int *,char*,int ,char const*) ;
 int argv_array_pushl (int *,char*,char*,char*,...) ;
 int child_process_init (struct child_process*) ;
 int connect_work_tree_and_git_dir (char const*,char*,int) ;
 char const* empty_tree_oid_hex () ;
 int error (int ,char const*) ;
 int free (char*) ;
 int get_git_common_dir () ;
 int get_super_prefix_or_empty () ;
 scalar_t__ is_empty_dir (char const*) ;
 int is_submodule_active (int ,char const*) ;
 int is_submodule_populated_gently (char const*,int*) ;
 int null_oid ;
 int prepare_submodule_repo_env (int *) ;
 int rmdir_or_warn (char const*) ;
 scalar_t__ run_command (struct child_process*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 struct submodule* submodule_from_path (int ,int *,char const*) ;
 scalar_t__ submodule_has_dirty_index (struct submodule const*) ;
 int submodule_reset_index (char const*) ;
 int submodule_unset_core_worktree (struct submodule const*) ;
 int submodule_uses_gitfile (char const*) ;
 int the_repository ;
 int unlink_or_warn (int ) ;
 char* xstrfmt (char*,int ,int ) ;

int submodule_move_head(const char *path,
    const char *old_head,
    const char *new_head,
    unsigned flags)
{
 int ret = 0;
 struct child_process cp = CHILD_PROCESS_INIT;
 const struct submodule *sub;
 int *error_code_ptr, error_code;

 if (!is_submodule_active(the_repository, path))
  return 0;

 if (flags & SUBMODULE_MOVE_HEAD_FORCE)





  error_code_ptr = &error_code;
 else
  error_code_ptr = ((void*)0);

 if (old_head && !is_submodule_populated_gently(path, error_code_ptr))
  return 0;

 sub = submodule_from_path(the_repository, &null_oid, path);

 if (!sub)
  BUG("could not get submodule information for '%s'", path);

 if (old_head && !(flags & SUBMODULE_MOVE_HEAD_FORCE)) {

  if (submodule_has_dirty_index(sub))
   return error(_("submodule '%s' has dirty index"), path);
 }

 if (!(flags & SUBMODULE_MOVE_HEAD_DRY_RUN)) {
  if (old_head) {
   if (!submodule_uses_gitfile(path))
    absorb_git_dir_into_superproject(path,
     ABSORB_GITDIR_RECURSE_SUBMODULES);
  } else {
   char *gitdir = xstrfmt("%s/modules/%s",
        get_git_common_dir(), sub->name);
   connect_work_tree_and_git_dir(path, gitdir, 0);
   free(gitdir);


   submodule_reset_index(path);
  }

  if (old_head && (flags & SUBMODULE_MOVE_HEAD_FORCE)) {
   char *gitdir = xstrfmt("%s/modules/%s",
        get_git_common_dir(), sub->name);
   connect_work_tree_and_git_dir(path, gitdir, 1);
   free(gitdir);
  }
 }

 prepare_submodule_repo_env(&cp.env_array);

 cp.git_cmd = 1;
 cp.no_stdin = 1;
 cp.dir = path;

 argv_array_pushf(&cp.args, "--super-prefix=%s%s/",
   get_super_prefix_or_empty(), path);
 argv_array_pushl(&cp.args, "read-tree", "--recurse-submodules", ((void*)0));

 if (flags & SUBMODULE_MOVE_HEAD_DRY_RUN)
  argv_array_push(&cp.args, "-n");
 else
  argv_array_push(&cp.args, "-u");

 if (flags & SUBMODULE_MOVE_HEAD_FORCE)
  argv_array_push(&cp.args, "--reset");
 else
  argv_array_push(&cp.args, "-m");

 if (!(flags & SUBMODULE_MOVE_HEAD_FORCE))
  argv_array_push(&cp.args, old_head ? old_head : empty_tree_oid_hex());

 argv_array_push(&cp.args, new_head ? new_head : empty_tree_oid_hex());

 if (run_command(&cp)) {
  ret = error(_("Submodule '%s' could not be updated."), path);
  goto out;
 }

 if (!(flags & SUBMODULE_MOVE_HEAD_DRY_RUN)) {
  if (new_head) {
   child_process_init(&cp);

   cp.git_cmd = 1;
   cp.no_stdin = 1;
   cp.dir = path;

   prepare_submodule_repo_env(&cp.env_array);
   argv_array_pushl(&cp.args, "update-ref", "HEAD",
      "--no-deref", new_head, ((void*)0));

   if (run_command(&cp)) {
    ret = -1;
    goto out;
   }
  } else {
   struct strbuf sb = STRBUF_INIT;

   strbuf_addf(&sb, "%s/.git", path);
   unlink_or_warn(sb.buf);
   strbuf_release(&sb);

   if (is_empty_dir(path))
    rmdir_or_warn(path);

   submodule_unset_core_worktree(sub);
  }
 }
out:
 return ret;
}
