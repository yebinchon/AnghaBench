
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int cl_rename (char*,char*) ;
 int git_buf_clear (int *) ;
 int git_path_prettify (int *,char*,int *) ;
 int p_mkdir (char*,int) ;
 int path ;

void test_repo_config__initialize(void)
{
 cl_fixture_sandbox("empty_standard_repo");
 cl_git_pass(cl_rename(
  "empty_standard_repo/.gitted", "empty_standard_repo/.git"));

 git_buf_clear(&path);

 cl_must_pass(p_mkdir("alternate", 0777));
 cl_git_pass(git_path_prettify(&path, "alternate", ((void*)0)));
}
