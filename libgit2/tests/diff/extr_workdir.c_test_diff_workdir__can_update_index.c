
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_index ;
struct TYPE_7__ {int oid_calculations; int stat_calls; } ;
typedef TYPE_1__ git_diff_perfdata ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 TYPE_1__ GIT_DIFF_PERFDATA_INIT ;
 int GIT_DIFF_UPDATE_INDEX ;
 int basic_diff_status (int **,TYPE_2__*) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_buf_dispose (int *) ;
 int git_buf_sets (int *,char*) ;
 int git_diff_free (int *) ;
 int git_diff_get_perfdata (TYPE_1__*,int *) ;
 int git_path_direach (int *,int ,int ,int *) ;
 int git_repository_index__weakptr (int **,int ) ;
 int tick_index (int *) ;
 int touch_file ;

void test_diff_workdir__can_update_index(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_diff_perfdata perf = GIT_DIFF_PERFDATA_INIT;
 git_index *index;

 g_repo = cl_git_sandbox_init("status");


 {
  git_buf path = GIT_BUF_INIT;
  cl_git_pass(git_buf_sets(&path, "status"));
  cl_git_pass(git_path_direach(&path, 0, touch_file, ((void*)0)));
  git_buf_dispose(&path);
 }

 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

 basic_diff_status(&diff, &opts);

 cl_git_pass(git_diff_get_perfdata(&perf, diff));
 cl_assert_equal_sz(13 + 3, perf.stat_calls);
 cl_assert_equal_sz(5, perf.oid_calculations);

 git_diff_free(diff);


 opts.flags |= GIT_DIFF_UPDATE_INDEX;


 cl_git_pass(git_repository_index__weakptr(&index, g_repo));
 tick_index(index);

 basic_diff_status(&diff, &opts);

 cl_git_pass(git_diff_get_perfdata(&perf, diff));
 cl_assert_equal_sz(13 + 3, perf.stat_calls);
 cl_assert_equal_sz(5, perf.oid_calculations);

 git_diff_free(diff);




 tick_index(index);
 basic_diff_status(&diff, &opts);

 cl_git_pass(git_diff_get_perfdata(&perf, diff));
 cl_assert_equal_sz(13 + 3, perf.stat_calls);
 cl_assert_equal_sz(0, perf.oid_calculations);

 git_diff_free(diff);
}
