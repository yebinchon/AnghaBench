
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int locked; int gitdir_path; int * gitlink_path; int * worktree_path; int * parent_path; int * commondir_path; int * name; } ;
typedef TYPE_1__ git_worktree ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 TYPE_1__* git__calloc (int,int) ;
 void* git__strdup (char const*) ;
 int git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int * git_path_dirname (int *) ;
 int git_path_prettify_dir (int *,char const*,int *) ;
 void* git_worktree__read_link (char const*,char*) ;
 int git_worktree_free (TYPE_1__*) ;
 int git_worktree_is_locked (int *,TYPE_1__*) ;
 int is_worktree_dir (char const*) ;

__attribute__((used)) static int open_worktree_dir(git_worktree **out, const char *parent, const char *dir, const char *name)
{
 git_buf gitdir = GIT_BUF_INIT;
 git_worktree *wt = ((void*)0);
 int error = 0;

 if (!is_worktree_dir(dir)) {
  error = -1;
  goto out;
 }

 if ((wt = git__calloc(1, sizeof(*wt))) == ((void*)0)) {
  error = -1;
  goto out;
 }

 if ((wt->name = git__strdup(name)) == ((void*)0)
     || (wt->commondir_path = git_worktree__read_link(dir, "commondir")) == ((void*)0)
     || (wt->gitlink_path = git_worktree__read_link(dir, "gitdir")) == ((void*)0)
     || (parent && (wt->parent_path = git__strdup(parent)) == ((void*)0))
     || (wt->worktree_path = git_path_dirname(wt->gitlink_path)) == ((void*)0)) {
  error = -1;
  goto out;
 }

 if ((error = git_path_prettify_dir(&gitdir, dir, ((void*)0))) < 0)
  goto out;
 wt->gitdir_path = git_buf_detach(&gitdir);

 wt->locked = !!git_worktree_is_locked(((void*)0), wt);

 *out = wt;

out:
 if (error)
  git_worktree_free(wt);
 git_buf_dispose(&gitdir);

 return error;
}
