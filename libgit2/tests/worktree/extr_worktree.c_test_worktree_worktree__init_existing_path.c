
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_worktree ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;
struct TYPE_11__ {TYPE_1__* worktree; TYPE_3__* repo; } ;
struct TYPE_10__ {int workdir; } ;
struct TYPE_8__ {int gitdir; } ;


 unsigned int ARRAY_SIZE (char const**) ;
 TYPE_2__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_6__ fixture ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char const*) ;
 int git_path_exists (int ) ;
 int git_worktree_add (int **,TYPE_3__*,char*,int ,int *) ;
 int p_unlink (int ) ;

void test_worktree_worktree__init_existing_path(void)
{
 const char *wtfiles[] = { "HEAD", "commondir", "gitdir", "index" };
 git_worktree *wt;
 git_buf path = GIT_BUF_INIT;
 unsigned i;



 for (i = 0; i < ARRAY_SIZE(wtfiles); i++) {
  cl_git_pass(git_buf_joinpath(&path,
       fixture.worktree->gitdir, wtfiles[i]));
  cl_git_pass(p_unlink(path.ptr));
 }

 cl_git_pass(git_buf_joinpath(&path, fixture.repo->workdir, "../testrepo-worktree"));
 cl_git_fail(git_worktree_add(&wt, fixture.repo, "worktree-new", path.ptr, ((void*)0)));


 for (i = 0; i < ARRAY_SIZE(wtfiles); i++) {
  cl_git_pass(git_buf_joinpath(&path,
       fixture.worktree->gitdir, wtfiles[i]));
  cl_assert(!git_path_exists(path.ptr));
 }

 git_buf_dispose(&path);
}
