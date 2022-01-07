
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_git_pass (int ) ;
 int git_config_set_bool (int *,char*,int ) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_repository_config (int **,int ) ;
 int repo ;
 int test_copy_note (int *,int ) ;

void test_rebase_merge__copy_notes_disabled_in_config(void)
{
 git_config *config;

 cl_git_pass(git_repository_config(&config, repo));
 cl_git_pass(git_config_set_bool(config, "notes.rewrite.rebase", 0));
 cl_git_pass(git_config_set_string(config,
  "notes.rewriteRef", "refs/notes/test"));

 test_copy_note(((void*)0), 0);
}
