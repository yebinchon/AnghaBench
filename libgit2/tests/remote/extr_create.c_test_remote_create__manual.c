
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;


 char* TEST_URL ;
 int _config ;
 int _repo ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_config_set_string (int ,char*,char*) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_remote_name (int *) ;
 int git_remote_url (int *) ;

void test_remote_create__manual(void)
{
 git_remote *remote;
 cl_git_pass(git_config_set_string(_config, "remote.origin.fetch", "+refs/heads/*:refs/remotes/origin/*"));
 cl_git_pass(git_config_set_string(_config, "remote.origin.url", TEST_URL));

 cl_git_pass(git_remote_lookup(&remote, _repo, "origin"));
 cl_assert_equal_s(git_remote_name(remote), "origin");
 cl_assert_equal_s(git_remote_url(remote), TEST_URL);

 git_remote_free(remote);
}
