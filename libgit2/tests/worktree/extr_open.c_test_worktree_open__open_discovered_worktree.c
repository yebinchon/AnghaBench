
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_7__ {int * worktree; } ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 TYPE_4__ fixture ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_repository_discover (TYPE_1__*,int ,int,int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_workdir (int *) ;

void test_worktree_open__open_discovered_worktree(void)
{
 git_buf path = GIT_BUF_INIT;
 git_repository *repo;

 cl_git_pass(git_repository_discover(&path,
  git_repository_workdir(fixture.worktree), 0, ((void*)0)));
 cl_git_pass(git_repository_open(&repo, path.ptr));
 cl_assert_equal_s(git_repository_workdir(fixture.worktree),
  git_repository_workdir(repo));

 git_buf_dispose(&path);
 git_repository_free(repo);
}
