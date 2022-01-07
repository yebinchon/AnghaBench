
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REMOTE_DOWNLOAD_TAGS_ALL ;
 int GIT_REMOTE_DOWNLOAD_TAGS_AUTO ;
 int GIT_REMOTE_DOWNLOAD_TAGS_NONE ;
 int _remote ;
 int _repo ;
 int assert_config_entry_existence (int ,char*,int) ;
 int assert_config_entry_value (int ,char*,char*) ;
 char* git_remote_name (int ) ;
 int git_remote_set_autotag (int ,char const*,int ) ;

void test_network_remote_remotes__tagopt(void)
{
 const char *name = git_remote_name(_remote);

 git_remote_set_autotag(_repo, name, GIT_REMOTE_DOWNLOAD_TAGS_ALL);
 assert_config_entry_value(_repo, "remote.test.tagopt", "--tags");

 git_remote_set_autotag(_repo, name, GIT_REMOTE_DOWNLOAD_TAGS_NONE);
 assert_config_entry_value(_repo, "remote.test.tagopt", "--no-tags");

 git_remote_set_autotag(_repo, name, GIT_REMOTE_DOWNLOAD_TAGS_AUTO);
 assert_config_entry_existence(_repo, "remote.test.tagopt", 0);
}
