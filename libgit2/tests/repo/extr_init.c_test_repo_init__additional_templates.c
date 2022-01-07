
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int _repo ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int ensure_repository_init (char*,int ,char*,char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_path_isdir (int ) ;
 int git_path_isfile (int ) ;
 int git_repository_path (int ) ;

void test_repo_init__additional_templates(void)
{
 git_buf path = GIT_BUF_INIT;

 cl_set_cleanup(&cleanup_repository, "tester");

 ensure_repository_init("tester", 0, "tester/.git/", "tester/");

 cl_git_pass(
  git_buf_joinpath(&path, git_repository_path(_repo), "description"));
 cl_assert(git_path_isfile(git_buf_cstr(&path)));

 cl_git_pass(
  git_buf_joinpath(&path, git_repository_path(_repo), "info/exclude"));
 cl_assert(git_path_isfile(git_buf_cstr(&path)));

 cl_git_pass(
  git_buf_joinpath(&path, git_repository_path(_repo), "hooks"));
 cl_assert(git_path_isdir(git_buf_cstr(&path)));


 git_buf_dispose(&path);
}
