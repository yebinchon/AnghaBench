
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int git_repository_free (int ) ;
 int git_repository_init (int *,char*,int) ;

void test_repo_init__reinit_bare_repo(void)
{
 cl_set_cleanup(&cleanup_repository, "reinit.git");


 cl_git_pass(git_repository_init(&_repo, "reinit.git", 1));
 git_repository_free(_repo);


 cl_git_pass(git_repository_init(&_repo, "reinit.git", 1));
}
