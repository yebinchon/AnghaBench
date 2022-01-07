
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 scalar_t__ GIT_SUBMODULE_IGNORE_NONE ;
 scalar_t__ GIT_SUBMODULE_UPDATE_CHECKOUT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 scalar_t__ g_repo ;
 scalar_t__ git__suffixcmp (int ,char*) ;
 scalar_t__ git_oid_streq (int *,char const*) ;
 int git_submodule_free (int *) ;
 int * git_submodule_head_id (int *) ;
 scalar_t__ git_submodule_ignore (int *) ;
 int * git_submodule_index_id (int *) ;
 int git_submodule_lookup (int **,scalar_t__,char*) ;
 int git_submodule_name (int *) ;
 scalar_t__ git_submodule_owner (int *) ;
 int git_submodule_path (int *) ;
 scalar_t__ git_submodule_update_strategy (int *) ;
 int git_submodule_url (int *) ;
 int * git_submodule_wd_id (int *) ;

void test_submodule_lookup__accessors(void)
{
 git_submodule *sm;
 const char *oid = "480095882d281ed676fe5b863569520e54a7d5c0";

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_unchanged"));
 cl_assert(git_submodule_owner(sm) == g_repo);
 cl_assert_equal_s("sm_unchanged", git_submodule_name(sm));
 cl_assert(git__suffixcmp(git_submodule_path(sm), "sm_unchanged") == 0);
 cl_assert(git__suffixcmp(git_submodule_url(sm), "/submod2_target") == 0);

 cl_assert(git_oid_streq(git_submodule_index_id(sm), oid) == 0);
 cl_assert(git_oid_streq(git_submodule_head_id(sm), oid) == 0);
 cl_assert(git_oid_streq(git_submodule_wd_id(sm), oid) == 0);

 cl_assert(git_submodule_ignore(sm) == GIT_SUBMODULE_IGNORE_NONE);
 cl_assert(git_submodule_update_strategy(sm) == GIT_SUBMODULE_UPDATE_CHECKOUT);

 git_submodule_free(sm);


 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_changed_head"));
 cl_assert_equal_s("sm_changed_head", git_submodule_name(sm));

 cl_assert(git_oid_streq(git_submodule_index_id(sm), oid) == 0);
 cl_assert(git_oid_streq(git_submodule_head_id(sm), oid) == 0);
 cl_assert(git_oid_streq(git_submodule_wd_id(sm),
  "3d9386c507f6b093471a3e324085657a3c2b4247") == 0);

 git_submodule_free(sm);


 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_added_and_uncommited"));
 cl_assert_equal_s("sm_added_and_uncommited", git_submodule_name(sm));

 cl_assert(git_oid_streq(git_submodule_index_id(sm), oid) == 0);
 cl_assert(git_submodule_head_id(sm) == ((void*)0));
 cl_assert(git_oid_streq(git_submodule_wd_id(sm), oid) == 0);

 git_submodule_free(sm);


 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_missing_commits"));
 cl_assert_equal_s("sm_missing_commits", git_submodule_name(sm));

 cl_assert(git_oid_streq(git_submodule_index_id(sm), oid) == 0);
 cl_assert(git_oid_streq(git_submodule_head_id(sm), oid) == 0);
 cl_assert(git_oid_streq(git_submodule_wd_id(sm),
  "5e4963595a9774b90524d35a807169049de8ccad") == 0);

 git_submodule_free(sm);
}
