
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_worktree ;
typedef int git_repository ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_11__ {TYPE_2__* repo; } ;
struct TYPE_10__ {int commondir; } ;


 TYPE_1__ GIT_BUF_INIT ;
 int O_RDWR ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_7__ fixture ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int ) ;
 int git_buf_sets (TYPE_1__*,char*) ;
 int git_futils_writebuffer (TYPE_1__*,int ,int ,int) ;
 int git_repository_open_from_worktree (int **,int *) ;
 int git_worktree_free (int *) ;
 int git_worktree_lookup (int **,TYPE_2__*,char*) ;

void test_worktree_worktree__open_invalid_commondir(void)
{
 git_worktree *wt;
 git_repository *repo;
 git_buf buf = GIT_BUF_INIT, path = GIT_BUF_INIT;

 cl_git_pass(git_buf_sets(&buf, "/path/to/nonexistent/commondir"));
 cl_git_pass(git_buf_printf(&path,
      "%s/worktrees/testrepo-worktree/commondir",
      fixture.repo->commondir));
 cl_git_pass(git_futils_writebuffer(&buf, path.ptr, O_RDWR, 0644));

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_git_fail(git_repository_open_from_worktree(&repo, wt));

 git_buf_dispose(&buf);
 git_buf_dispose(&path);
 git_worktree_free(wt);
}
