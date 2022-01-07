
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int GIT_ENOTFOUND ;
 int O_CREAT ;
 int O_WRONLY ;
 int assert_config_entry_on_init (char*,int) ;
 int cl_git_write2file (char*,char*,int ,int,int) ;
 int cl_must_pass (int ) ;
 scalar_t__ p_stat (char*,struct stat*) ;
 int p_unlink (char*) ;

void test_repo_init__detect_precompose_unicode_required(void)
{
 assert_config_entry_on_init("core.precomposeunicode", GIT_ENOTFOUND);

}
