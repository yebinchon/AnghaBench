
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int checkout_strategy; } ;
struct TYPE_9__ {TYPE_1__ checkout_opts; } ;
typedef TYPE_2__ git_submodule_update_options ;
typedef int git_submodule ;
typedef int git_reference ;
typedef int git_object ;
struct TYPE_10__ {int checkout_strategy; } ;
typedef TYPE_3__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_3__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_OBJECT_COMMIT ;
 int GIT_SUBMODULE_IGNORE_UNSPECIFIED ;
 int GIT_SUBMODULE_STATUS_IN_CONFIG ;
 int GIT_SUBMODULE_STATUS_IN_HEAD ;
 int GIT_SUBMODULE_STATUS_IN_INDEX ;
 int GIT_SUBMODULE_STATUS_IN_WD ;
 int GIT_SUBMODULE_STATUS_WD_MODIFIED ;
 int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ;
 TYPE_2__ GIT_SUBMODULE_UPDATE_OPTIONS_INIT ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int cl_assert (int) ;
 int cl_assert_equal_i (unsigned int,int) ;
 int cl_git_pass (int ) ;
 int cl_git_write2file (char*,char*,int ,int,int) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_3__*) ;
 int git_object_free (int *) ;
 scalar_t__ git_oid_streq (int ,char*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_name (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_set_head (int ,int ) ;
 int git_submodule_free (int *) ;
 int git_submodule_head_id (int *) ;
 int git_submodule_index_id (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_status (unsigned int*,int ,char*,int ) ;
 int git_submodule_update (int *,int,TYPE_2__*) ;
 int git_submodule_wd_id (int *) ;
 int setup_fixture_submodule_simple () ;

void test_submodule_update__can_force_update(void)
{
 git_submodule *sm = ((void*)0);
 git_checkout_options checkout_options = GIT_CHECKOUT_OPTIONS_INIT;
 git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;
 unsigned int submodule_status = 0;
 git_reference *branch_reference = ((void*)0);
 git_object *branch_commit = ((void*)0);

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


 checkout_options.checkout_strategy = GIT_CHECKOUT_SAFE;

 cl_git_pass(git_reference_lookup(&branch_reference, g_repo, "refs/heads/alternate_1"));
 cl_git_pass(git_reference_peel(&branch_commit, branch_reference, GIT_OBJECT_COMMIT));
 cl_git_pass(git_checkout_tree(g_repo, branch_commit, &checkout_options));
 cl_git_pass(git_repository_set_head(g_repo, git_reference_name(branch_reference)));





 cl_git_pass(git_submodule_status(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));

 git_submodule_free(sm);
 cl_git_pass(git_submodule_lookup(&sm, g_repo, "testrepo"));

 cl_assert_equal_i(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
  GIT_SUBMODULE_STATUS_IN_INDEX |
  GIT_SUBMODULE_STATUS_IN_CONFIG |
  GIT_SUBMODULE_STATUS_IN_WD |
  GIT_SUBMODULE_STATUS_WD_MODIFIED);

 cl_assert(git_oid_streq(git_submodule_head_id(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
 cl_assert(git_oid_streq(git_submodule_wd_id(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
 cl_assert(git_oid_streq(git_submodule_index_id(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);





 cl_git_write2file("submodule_simple/testrepo/branch_file.txt", "a conflicting edit", 0,
  O_WRONLY | O_CREAT | O_TRUNC, 0777);


 update_options.checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 cl_git_pass(git_submodule_update(sm, 0, &update_options));
 cl_assert(git_oid_streq(git_submodule_head_id(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
 cl_assert(git_oid_streq(git_submodule_wd_id(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
 cl_assert(git_oid_streq(git_submodule_index_id(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);

 git_submodule_free(sm);
 git_object_free(branch_commit);
 git_reference_free(branch_reference);
}
