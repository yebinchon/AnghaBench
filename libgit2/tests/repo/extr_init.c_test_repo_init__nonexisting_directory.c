
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository_init_options ;
typedef int git_repository ;


 int GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int cl_git_fail (int ) ;
 int git_repository_init_ext (int **,char*,int *) ;

void test_repo_init__nonexisting_directory(void)
{
 git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;
 git_repository *repo;







 cl_git_fail(git_repository_init_ext(&repo, "nonexisting/path", &opts));
}
