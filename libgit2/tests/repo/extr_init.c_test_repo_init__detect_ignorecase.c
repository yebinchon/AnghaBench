
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

void test_repo_init__detect_ignorecase(void)
{
 struct stat st;
 bool found_without_match;

 cl_git_write2file("testCAPS", "whatever\n", 0, O_CREAT | O_WRONLY, 0666);
 found_without_match = (p_stat("Testcaps", &st) == 0);
 cl_must_pass(p_unlink("testCAPS"));

 assert_config_entry_on_init(
  "core.ignorecase", found_without_match ? 1 : GIT_ENOTFOUND);
}
