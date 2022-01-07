
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;
typedef int git_config ;


 char* TEST_URL ;
 int _repo ;
 int cl_assert_equal_i (size_t,size_t) ;
 int cl_assert_equal_p (int ,int ) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 size_t count_config_entries_match (int ,char*) ;
 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,char*) ;
 int git_remote_create (int **,int ,char*,char*) ;
 int git_remote_free (int *) ;
 char const* git_remote_name (int *) ;
 int git_remote_owner (int *) ;
 char const* git_remote_url (int *) ;
 int git_repository_config_snapshot (int **,int ) ;

void test_remote_create__named(void)
{
 git_remote *remote;
 git_config *cfg;
 const char *cfg_val;

 size_t section_count = count_config_entries_match(_repo, "remote\\.");

 cl_git_pass(git_remote_create(&remote, _repo, "valid-name", TEST_URL));

 cl_assert_equal_s(git_remote_name(remote), "valid-name");
 cl_assert_equal_s(git_remote_url(remote), TEST_URL);
 cl_assert_equal_p(git_remote_owner(remote), _repo);

 cl_git_pass(git_repository_config_snapshot(&cfg, _repo));

 cl_git_pass(git_config_get_string(&cfg_val, cfg, "remote.valid-name.fetch"));
 cl_assert_equal_s(cfg_val, "+refs/heads/*:refs/remotes/valid-name/*");

 cl_git_pass(git_config_get_string(&cfg_val, cfg, "remote.valid-name.url"));
 cl_assert_equal_s(cfg_val, TEST_URL);

 cl_assert_equal_i(section_count + 2, count_config_entries_match(_repo, "remote\\."));

 git_config_free(cfg);
 git_remote_free(remote);
}
