
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_config ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_config_delete_entry (int *,char*) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_int32 (int *,char*,int) ;

void test_config_add__to_new_section(void)
{
 git_config *cfg;
 int32_t i;

 cl_git_pass(git_config_open_ondisk(&cfg, "config10"));
 cl_git_pass(git_config_set_int32(cfg, "section.tmp", 5));
 cl_git_pass(git_config_get_int32(&i, cfg, "section.tmp"));
 cl_assert(i == 5);
 cl_git_pass(git_config_delete_entry(cfg, "section.tmp"));
 git_config_free(cfg);
}
