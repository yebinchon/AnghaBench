
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_repository_is_bare (int ) ;
 int git_repository_set_workdir (int ,char*,int) ;
 int * git_repository_workdir (int ) ;
 int repo ;

void test_repo_setters__setting_a_workdir_turns_a_bare_repository_into_a_standard_one(void)
{
 cl_assert(git_repository_is_bare(repo) == 1);

 cl_assert(git_repository_workdir(repo) == ((void*)0));
 cl_git_pass(git_repository_set_workdir(repo, "./new_workdir", 0));

 cl_assert(git_repository_workdir(repo) != ((void*)0));
 cl_assert(git_repository_is_bare(repo) == 0);
}
