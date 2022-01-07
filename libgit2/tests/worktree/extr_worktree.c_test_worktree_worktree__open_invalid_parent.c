
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_worktree ;
typedef int git_repository ;
typedef int git_buf ;
struct TYPE_4__ {int repo; TYPE_1__* worktree; } ;
struct TYPE_3__ {int gitlink; } ;


 int GIT_BUF_INIT ;
 int O_RDWR ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_2__ fixture ;
 int git_buf_dispose (int *) ;
 int git_buf_sets (int *,char*) ;
 int git_futils_writebuffer (int *,int ,int ,int) ;
 int git_repository_open_from_worktree (int **,int *) ;
 int git_worktree_free (int *) ;
 int git_worktree_lookup (int **,int ,char*) ;

void test_worktree_worktree__open_invalid_parent(void)
{
 git_worktree *wt;
 git_repository *repo;
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_sets(&buf, "/path/to/nonexistent/gitdir"));
 cl_git_pass(git_futils_writebuffer(&buf,
      fixture.worktree->gitlink, O_RDWR, 0644));

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_git_fail(git_repository_open_from_worktree(&repo, wt));

 git_buf_dispose(&buf);
 git_worktree_free(wt);
}
