
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_buf ;
struct TYPE_7__ {int* payload; int * transfer_progress; } ;
struct TYPE_8__ {TYPE_2__ callbacks; } ;
struct TYPE_6__ {int* progress_payload; int * progress_cb; int checkout_strategy; } ;
struct TYPE_9__ {TYPE_3__ fetch_opts; TYPE_1__ checkout_opts; } ;


 int GIT_BUF_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_REFERENCE_SYMBOLIC ;
 int LIVE_REPO_URL ;
 int checkout_progress ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int fetch_progress ;
 TYPE_4__ g_options ;
 int g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_clone (int *,int ,char*,TYPE_4__*) ;
 int git_path_isfile (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_symbolic_target (int *) ;
 int git_reference_type (int *) ;
 int git_repository_workdir (int ) ;

void test_online_clone__can_checkout_a_cloned_repo(void)
{
 git_buf path = GIT_BUF_INIT;
 git_reference *head;
 bool checkout_progress_cb_was_called = 0,
    fetch_progress_cb_was_called = 0;

 g_options.checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
 g_options.checkout_opts.progress_cb = &checkout_progress;
 g_options.checkout_opts.progress_payload = &checkout_progress_cb_was_called;
 g_options.fetch_opts.callbacks.transfer_progress = &fetch_progress;
 g_options.fetch_opts.callbacks.payload = &fetch_progress_cb_was_called;

 cl_git_pass(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));

 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(g_repo), "master.txt"));
 cl_assert_equal_i(1, git_path_isfile(git_buf_cstr(&path)));

 cl_git_pass(git_reference_lookup(&head, g_repo, "HEAD"));
 cl_assert_equal_i(GIT_REFERENCE_SYMBOLIC, git_reference_type(head));
 cl_assert_equal_s("refs/heads/master", git_reference_symbolic_target(head));

 cl_assert_equal_i(1, checkout_progress_cb_was_called);
 cl_assert_equal_i(1, fetch_progress_cb_was_called);

 git_reference_free(head);
 git_buf_dispose(&path);
}
