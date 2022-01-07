
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 int ensure_submodules_found (int ,char const**,int ) ;
 int g_repo ;
 int setup_fixture_submod2 () ;

void test_diff_submodules__can_be_identified_by_trailing_slash_in_pathspec(void)
{
 const char *one_path_without_slash[] = { "sm_changed_head" };
 const char *one_path_with_slash[] = { "sm_changed_head/" };
 const char *many_paths_without_slashes[] = { "sm_changed_head", "sm_changed_index" };
 const char *many_paths_with_slashes[] = { "sm_changed_head/", "sm_changed_index/" };

 g_repo = setup_fixture_submod2();

 ensure_submodules_found(g_repo, one_path_without_slash, ARRAY_SIZE(one_path_without_slash));
 ensure_submodules_found(g_repo, one_path_with_slash, ARRAY_SIZE(one_path_with_slash));
 ensure_submodules_found(g_repo, many_paths_without_slashes, ARRAY_SIZE(many_paths_without_slashes));
 ensure_submodules_found(g_repo, many_paths_with_slashes, ARRAY_SIZE(many_paths_with_slashes));
}
