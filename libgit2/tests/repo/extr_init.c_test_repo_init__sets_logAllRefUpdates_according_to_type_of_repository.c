
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int _repo ;
 int assert_config_entry_on_init_bytype (char*,int,int) ;
 int git_repository_free (int ) ;

void test_repo_init__sets_logAllRefUpdates_according_to_type_of_repository(void)
{
 assert_config_entry_on_init_bytype("core.logallrefupdates", GIT_ENOTFOUND, 1);
 git_repository_free(_repo);
 assert_config_entry_on_init_bytype("core.logallrefupdates", 1, 0);
}
