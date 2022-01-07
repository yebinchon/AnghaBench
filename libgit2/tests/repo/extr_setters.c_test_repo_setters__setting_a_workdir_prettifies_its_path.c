
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git__suffixcmp (int ,char*) ;
 int git_repository_set_workdir (int ,char*,int) ;
 int git_repository_workdir (int ) ;
 int repo ;

void test_repo_setters__setting_a_workdir_prettifies_its_path(void)
{
 cl_git_pass(git_repository_set_workdir(repo, "./new_workdir", 0));

 cl_assert(git__suffixcmp(git_repository_workdir(repo), "new_workdir/") == 0);
}
