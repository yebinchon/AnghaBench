
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int * ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_REPOSITORY_OPEN_NO_DOTGIT ;
 int GIT_REPOSITORY_OPEN_NO_SEARCH ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int *,char*) ;
 int git_buf_sets (TYPE_1__*,int ) ;
 int git_repository_open (int **,char*) ;
 int git_repository_open_ext (int **,char*,int,int *) ;
 int git_repository_workdir (int *) ;
 int p_mkdir (char*,int) ;

void test_repo_open__failures(void)
{
 git_repository *base, *repo;
 git_buf ceiling = GIT_BUF_INIT;

 base = cl_git_sandbox_init("attr");
 cl_git_pass(git_buf_sets(&ceiling, git_repository_workdir(base)));


 cl_git_fail(git_repository_open(&repo, "attr/sub"));
 cl_git_fail(git_repository_open_ext(
  &repo, "attr/sub", GIT_REPOSITORY_OPEN_NO_SEARCH, ((void*)0)));


 cl_git_fail(git_repository_open_ext(&repo, "attr/sub", 0, ceiling.ptr));
 cl_git_pass(git_buf_joinpath(&ceiling, ceiling.ptr, "sub"));
 cl_git_fail(git_repository_open_ext(&repo, "attr/sub/sub", 0, ceiling.ptr));


 cl_git_pass(p_mkdir("alternate", 0777));
 cl_git_pass(p_mkdir("alternate/.git", 0777));
 cl_git_fail(git_repository_open_ext(&repo, "alternate", 0, ((void*)0)));
 cl_git_fail(git_repository_open_ext(&repo, "alternate/.git", 0, ((void*)0)));


 cl_git_fail(git_repository_open_ext(
  &repo, "attr",
  GIT_REPOSITORY_OPEN_NO_SEARCH | GIT_REPOSITORY_OPEN_NO_DOTGIT,
  ((void*)0)));

 git_buf_dispose(&ceiling);
}
