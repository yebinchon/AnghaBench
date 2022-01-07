
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_MACRO_FUNC_INIT_EQUAL (int ,int ,int ,int ) ;
 int GIT_APPLY_OPTIONS_INIT ;
 int GIT_APPLY_OPTIONS_VERSION ;
 int GIT_BLAME_OPTIONS_INIT ;
 int GIT_BLAME_OPTIONS_VERSION ;
 int GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_OPTIONS_VERSION ;
 int GIT_CLONE_OPTIONS_INIT ;
 int GIT_CLONE_OPTIONS_VERSION ;
 int GIT_CONFIG_BACKEND_INIT ;
 int GIT_CONFIG_BACKEND_VERSION ;
 int GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FIND_OPTIONS_VERSION ;
 int GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_OPTIONS_VERSION ;
 int GIT_DIFF_PATCHID_OPTIONS_INIT ;
 int GIT_DIFF_PATCHID_OPTIONS_VERSION ;
 int GIT_FILTER_INIT ;
 int GIT_FILTER_VERSION ;
 int GIT_MERGE_FILE_INPUT_INIT ;
 int GIT_MERGE_FILE_INPUT_VERSION ;
 int GIT_MERGE_FILE_OPTIONS_INIT ;
 int GIT_MERGE_FILE_OPTIONS_VERSION ;
 int GIT_MERGE_OPTIONS_INIT ;
 int GIT_MERGE_OPTIONS_VERSION ;
 int GIT_ODB_BACKEND_INIT ;
 int GIT_ODB_BACKEND_VERSION ;
 int GIT_PROXY_OPTIONS_INIT ;
 int GIT_PROXY_OPTIONS_VERSION ;
 int GIT_PUSH_OPTIONS_INIT ;
 int GIT_PUSH_OPTIONS_VERSION ;
 int GIT_REFDB_BACKEND_INIT ;
 int GIT_REFDB_BACKEND_VERSION ;
 int GIT_REMOTE_CALLBACKS_INIT ;
 int GIT_REMOTE_CALLBACKS_VERSION ;
 int GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int GIT_REPOSITORY_INIT_OPTIONS_VERSION ;
 int GIT_REVERT_OPTIONS_INIT ;
 int GIT_REVERT_OPTIONS_VERSION ;
 int GIT_STASH_APPLY_OPTIONS_INIT ;
 int GIT_STASH_APPLY_OPTIONS_VERSION ;
 int GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPTIONS_VERSION ;
 int GIT_SUBMODULE_UPDATE_OPTIONS_INIT ;
 int GIT_SUBMODULE_UPDATE_OPTIONS_VERSION ;
 int GIT_TRANSPORT_INIT ;
 int GIT_TRANSPORT_VERSION ;
 int clar__skip () ;
 int git_apply_options ;
 int git_apply_options_init ;
 int git_blame_options ;
 int git_blame_options_init ;
 int git_checkout_options ;
 int git_checkout_options_init ;
 int git_clone_options ;
 int git_clone_options_init ;
 int git_config_backend ;
 int git_config_init_backend ;
 int git_diff_find_options ;
 int git_diff_find_options_init ;
 int git_diff_options ;
 int git_diff_options_init ;
 int git_diff_patchid_options ;
 int git_diff_patchid_options_init ;
 int git_filter ;
 int git_filter_init ;
 int git_merge_file_input ;
 int git_merge_file_input_init ;
 int git_merge_file_options ;
 int git_merge_file_options_init ;
 int git_merge_options ;
 int git_merge_options_init ;
 int git_odb_backend ;
 int git_odb_init_backend ;
 int git_proxy_options ;
 int git_proxy_options_init ;
 int git_push_options ;
 int git_push_options_init ;
 int git_refdb_backend ;
 int git_refdb_init_backend ;
 int git_remote_callbacks ;
 int git_remote_init_callbacks ;
 int git_repository_init_options ;
 int git_repository_init_options_init ;
 int git_revert_options ;
 int git_revert_options_init ;
 int git_stash_apply_options ;
 int git_stash_apply_options_init ;
 int git_status_options ;
 int git_status_options_init ;
 int git_submodule_update_options ;
 int git_submodule_update_options_init ;
 int git_transport ;
 int git_transport_init ;

void test_core_structinit__compare(void)
{
 clar__skip();



 CHECK_MACRO_FUNC_INIT_EQUAL( git_apply_options, GIT_APPLY_OPTIONS_VERSION, GIT_APPLY_OPTIONS_INIT, git_apply_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_blame_options, GIT_BLAME_OPTIONS_VERSION, GIT_BLAME_OPTIONS_INIT, git_blame_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_checkout_options, GIT_CHECKOUT_OPTIONS_VERSION, GIT_CHECKOUT_OPTIONS_INIT, git_checkout_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_clone_options, GIT_CLONE_OPTIONS_VERSION, GIT_CLONE_OPTIONS_INIT, git_clone_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_diff_options, GIT_DIFF_OPTIONS_VERSION, GIT_DIFF_OPTIONS_INIT, git_diff_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_diff_find_options, GIT_DIFF_FIND_OPTIONS_VERSION, GIT_DIFF_FIND_OPTIONS_INIT, git_diff_find_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_filter, GIT_FILTER_VERSION, GIT_FILTER_INIT, git_filter_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_merge_file_input, GIT_MERGE_FILE_INPUT_VERSION, GIT_MERGE_FILE_INPUT_INIT, git_merge_file_input_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_merge_file_options, GIT_MERGE_FILE_OPTIONS_VERSION, GIT_MERGE_FILE_OPTIONS_INIT, git_merge_file_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_merge_options, GIT_MERGE_OPTIONS_VERSION, GIT_MERGE_OPTIONS_INIT, git_merge_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_push_options, GIT_PUSH_OPTIONS_VERSION, GIT_PUSH_OPTIONS_INIT, git_push_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_remote_callbacks, GIT_REMOTE_CALLBACKS_VERSION, GIT_REMOTE_CALLBACKS_INIT, git_remote_init_callbacks);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_repository_init_options, GIT_REPOSITORY_INIT_OPTIONS_VERSION, GIT_REPOSITORY_INIT_OPTIONS_INIT, git_repository_init_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_revert_options, GIT_REVERT_OPTIONS_VERSION, GIT_REVERT_OPTIONS_INIT, git_revert_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_stash_apply_options, GIT_STASH_APPLY_OPTIONS_VERSION, GIT_STASH_APPLY_OPTIONS_INIT, git_stash_apply_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_status_options, GIT_STATUS_OPTIONS_VERSION, GIT_STATUS_OPTIONS_INIT, git_status_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_transport, GIT_TRANSPORT_VERSION, GIT_TRANSPORT_INIT, git_transport_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_config_backend, GIT_CONFIG_BACKEND_VERSION, GIT_CONFIG_BACKEND_INIT, git_config_init_backend);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_odb_backend, GIT_ODB_BACKEND_VERSION, GIT_ODB_BACKEND_INIT, git_odb_init_backend);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_refdb_backend, GIT_REFDB_BACKEND_VERSION, GIT_REFDB_BACKEND_INIT, git_refdb_init_backend);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_submodule_update_options, GIT_SUBMODULE_UPDATE_OPTIONS_VERSION, GIT_SUBMODULE_UPDATE_OPTIONS_INIT, git_submodule_update_options_init);




 CHECK_MACRO_FUNC_INIT_EQUAL( git_proxy_options, GIT_PROXY_OPTIONS_VERSION, GIT_PROXY_OPTIONS_INIT, git_proxy_options_init);



 CHECK_MACRO_FUNC_INIT_EQUAL( git_diff_patchid_options, GIT_DIFF_PATCHID_OPTIONS_VERSION, GIT_DIFF_PATCHID_OPTIONS_INIT, git_diff_patchid_options_init);


}
