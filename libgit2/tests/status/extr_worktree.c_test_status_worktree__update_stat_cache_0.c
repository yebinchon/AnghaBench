
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ git_status_options ;
typedef int git_status_list ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_8__ {int oid_calculations; int stat_calls; } ;
typedef TYPE_2__ git_diff_perfdata ;


 TYPE_2__ GIT_DIFF_PERFDATA_INIT ;
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_DEFAULTS ;
 int GIT_STATUS_OPT_UPDATE_INDEX ;
 int check_status0 (int *) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_repository_index__weakptr (int **,int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_get_perfdata (TYPE_2__*,int *) ;
 int git_status_list_new (int **,int *,TYPE_1__*) ;
 int tick_index (int *) ;

void test_status_worktree__update_stat_cache_0(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 git_status_list *status;
 git_diff_perfdata perf = GIT_DIFF_PERFDATA_INIT;
 git_index *index;

 opts.flags = GIT_STATUS_OPT_DEFAULTS;

 cl_git_pass(git_status_list_new(&status, repo, &opts));
 check_status0(status);
 cl_git_pass(git_status_list_get_perfdata(&perf, status));
 cl_assert_equal_sz(13 + 3, perf.stat_calls);
 cl_assert_equal_sz(5, perf.oid_calculations);

 git_status_list_free(status);


 cl_git_pass(git_repository_index__weakptr(&index, repo));
 tick_index(index);

 opts.flags |= GIT_STATUS_OPT_UPDATE_INDEX;

 cl_git_pass(git_status_list_new(&status, repo, &opts));
 check_status0(status);
 cl_git_pass(git_status_list_get_perfdata(&perf, status));
 cl_assert_equal_sz(13 + 3, perf.stat_calls);
 cl_assert_equal_sz(5, perf.oid_calculations);

 git_status_list_free(status);

 opts.flags &= ~GIT_STATUS_OPT_UPDATE_INDEX;


 tick_index(index);
 cl_git_pass(git_status_list_new(&status, repo, &opts));
 check_status0(status);
 cl_git_pass(git_status_list_get_perfdata(&perf, status));
 cl_assert_equal_sz(13 + 3, perf.stat_calls);
 cl_assert_equal_sz(0, perf.oid_calculations);

 git_status_list_free(status);
}
