
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct update_submodule_cb_payload {int checkout_progress_called; int update_tips_called; int member_0; } ;
struct TYPE_8__ {struct update_submodule_cb_payload* payload; int update_tips; } ;
struct TYPE_9__ {TYPE_2__ callbacks; } ;
struct TYPE_7__ {struct update_submodule_cb_payload* progress_payload; int progress_cb; } ;
struct TYPE_10__ {TYPE_3__ fetch_opts; TYPE_1__ checkout_opts; } ;
typedef TYPE_4__ git_submodule_update_options ;
typedef int git_submodule ;


 int GIT_SUBMODULE_IGNORE_UNSPECIFIED ;
 int GIT_SUBMODULE_STATUS_IN_CONFIG ;
 int GIT_SUBMODULE_STATUS_IN_HEAD ;
 int GIT_SUBMODULE_STATUS_IN_INDEX ;
 int GIT_SUBMODULE_STATUS_IN_WD ;
 int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ;
 TYPE_4__ GIT_SUBMODULE_UPDATE_OPTIONS_INIT ;
 int checkout_progress_cb ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 scalar_t__ git_oid_streq (int ,char*) ;
 int git_submodule_free (int *) ;
 int git_submodule_head_id (int *) ;
 int git_submodule_index_id (int *) ;
 int git_submodule_init (int *,int ) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_status (unsigned int*,int ,char*,int ) ;
 int git_submodule_update (int *,int ,TYPE_4__*) ;
 int git_submodule_wd_id (int *) ;
 int setup_fixture_submodule_simple () ;
 int update_tips ;

void test_submodule_update__update_submodule(void)
{
 git_submodule *sm;
 git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;
 unsigned int submodule_status = 0;
 struct update_submodule_cb_payload update_payload = { 0 };

 g_repo = setup_fixture_submodule_simple();

 update_options.checkout_opts.progress_cb = checkout_progress_cb;
 update_options.checkout_opts.progress_payload = &update_payload;

 update_options.fetch_opts.callbacks.update_tips = update_tips;
 update_options.fetch_opts.callbacks.payload = &update_payload;


 cl_git_pass(git_submodule_lookup(&sm, g_repo, "testrepo"));


 cl_git_pass(git_submodule_status(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));
 cl_assert_equal_i(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
  GIT_SUBMODULE_STATUS_IN_INDEX |
  GIT_SUBMODULE_STATUS_IN_CONFIG |
  GIT_SUBMODULE_STATUS_WD_UNINITIALIZED);


 cl_git_pass(git_submodule_init(sm, 0));
 cl_git_pass(git_submodule_update(sm, 0, &update_options));


 cl_git_pass(git_submodule_status(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));
 cl_assert_equal_i(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
  GIT_SUBMODULE_STATUS_IN_INDEX |
  GIT_SUBMODULE_STATUS_IN_CONFIG |
  GIT_SUBMODULE_STATUS_IN_WD);

 cl_assert(git_oid_streq(git_submodule_head_id(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
 cl_assert(git_oid_streq(git_submodule_wd_id(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
 cl_assert(git_oid_streq(git_submodule_index_id(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);


 cl_assert_equal_i(1, update_payload.checkout_progress_called);
 cl_assert_equal_i(1, update_payload.update_tips_called);

 git_submodule_free(sm);
}
