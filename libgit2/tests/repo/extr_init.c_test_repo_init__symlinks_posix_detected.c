
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int assert_config_entry_on_init (char*,int) ;
 int cl_skip () ;
 scalar_t__ git_path_supports_symlinks (char*) ;

void test_repo_init__symlinks_posix_detected(void)
{



 assert_config_entry_on_init(
     "core.symlinks", git_path_supports_symlinks("link") ? GIT_ENOTFOUND : 0);

}
