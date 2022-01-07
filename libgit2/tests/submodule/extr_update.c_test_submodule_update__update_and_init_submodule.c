
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule_update_options ;
typedef int git_submodule ;


 int GIT_SUBMODULE_IGNORE_UNSPECIFIED ;
 int GIT_SUBMODULE_STATUS_IN_CONFIG ;
 int GIT_SUBMODULE_STATUS_IN_HEAD ;
 int GIT_SUBMODULE_STATUS_IN_INDEX ;
 int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ;
 int GIT_SUBMODULE_UPDATE_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_i (unsigned int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 scalar_t__ git_oid_streq (int ,char*) ;
 int git_submodule_free (int *) ;
 int git_submodule_head_id (int *) ;
 int git_submodule_index_id (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_status (unsigned int*,int ,char*,int ) ;
 int git_submodule_update (int *,int,int *) ;
 int git_submodule_wd_id (int *) ;
 int setup_fixture_submodule_simple () ;

void test_submodule_update__update_and_init_submodule(void)
{
 git_submodule *sm;
 git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;
 unsigned int submodule_status = 0;

 g_repo = setup_fixture_submodule_simple();


 cl_git_pass(git_submodule_lookup(&sm, g_repo, "testrepo"));

 cl_git_pass(git_submodule_status(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));
 cl_assert_equal_i(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
  GIT_SUBMODULE_STATUS_IN_INDEX |
  GIT_SUBMODULE_STATUS_IN_CONFIG |
  GIT_SUBMODULE_STATUS_WD_UNINITIALIZED);


 cl_git_pass(git_submodule_update(sm, 1, &update_options));


 cl_assert(git_oid_streq(git_submodule_head_id(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
 cl_assert(git_oid_streq(git_submodule_wd_id(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
 cl_assert(git_oid_streq(git_submodule_index_id(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);

 git_submodule_free(sm);
}
