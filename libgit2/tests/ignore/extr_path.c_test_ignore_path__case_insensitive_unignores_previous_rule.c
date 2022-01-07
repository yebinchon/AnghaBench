
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int assert_is_ignored (int,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_config_set_bool (int *,char*,int) ;
 int git_repository_config (int **,int ) ;
 int p_mkdir (char*,int) ;

void test_ignore_path__case_insensitive_unignores_previous_rule(void)
{
 git_config *cfg;

 cl_git_rewritefile("attr/.gitignore",
  "/case\n"
  "!/Case/\n");

 cl_git_pass(git_repository_config(&cfg, g_repo));
 cl_git_pass(git_config_set_bool(cfg, "core.ignorecase", 1));

 cl_must_pass(p_mkdir("attr/case", 0755));
 cl_git_mkfile("attr/case/file", "content");

 assert_is_ignored(0, "case/file");
}
