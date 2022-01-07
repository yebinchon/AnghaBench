
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ sm_lookup_data ;
typedef int git_config ;
typedef int data ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_config_delete_entry (int *,char*) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_submodule_foreach (int ,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int sm_lookup_cb ;

void test_submodule_lookup__foreach(void)
{
 git_config *cfg;
 sm_lookup_data data;

 memset(&data, 0, sizeof(data));
 cl_git_pass(git_submodule_foreach(g_repo, sm_lookup_cb, &data));
 cl_assert_equal_i(8, data.count);

 memset(&data, 0, sizeof(data));


 cl_git_pass(git_config_open_ondisk(&cfg, "submod2/.gitmodules"));

 cl_git_pass(git_config_set_string(cfg, "submodule.smchangedindex.path", "sm_changed_index"));
 cl_git_pass(git_config_set_string(cfg, "submodule.smchangedindex.url", "../submod2_target"));
 cl_git_pass(git_config_delete_entry(cfg, "submodule.sm_changed_index.path"));
 cl_git_pass(git_config_delete_entry(cfg, "submodule.sm_changed_index.url"));

 git_config_free(cfg);

 cl_git_pass(git_submodule_foreach(g_repo, sm_lookup_cb, &data));
 cl_assert_equal_i(8, data.count);
}
