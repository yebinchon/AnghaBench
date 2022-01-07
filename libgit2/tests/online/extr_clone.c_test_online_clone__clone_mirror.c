
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_6__ {int* payload; int * transfer_progress; } ;
struct TYPE_7__ {TYPE_1__ callbacks; } ;
struct TYPE_8__ {int bare; int remote_cb; TYPE_2__ fetch_opts; } ;
typedef TYPE_3__ git_clone_options ;


 TYPE_3__ GIT_CLONE_OPTIONS_INIT ;
 int GIT_REFERENCE_SYMBOLIC ;
 int LIVE_REPO_URL ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 int fetch_progress ;
 int * g_repo ;
 int git_clone (int **,int ,char*,TYPE_3__*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_reference_symbolic_target (int *) ;
 int git_reference_type (int *) ;
 int git_repository_free (int *) ;
 int remote_mirror_cb ;

void test_online_clone__clone_mirror(void)
{
 git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
 git_reference *head;

 bool fetch_progress_cb_was_called = 0;

 opts.fetch_opts.callbacks.transfer_progress = &fetch_progress;
 opts.fetch_opts.callbacks.payload = &fetch_progress_cb_was_called;

 opts.bare = 1;
 opts.remote_cb = remote_mirror_cb;

 cl_git_pass(git_clone(&g_repo, LIVE_REPO_URL, "./foo.git", &opts));

 cl_git_pass(git_reference_lookup(&head, g_repo, "HEAD"));
 cl_assert_equal_i(GIT_REFERENCE_SYMBOLIC, git_reference_type(head));
 cl_assert_equal_s("refs/heads/master", git_reference_symbolic_target(head));

 cl_assert_equal_i(1, fetch_progress_cb_was_called);

 git_reference_free(head);
 git_repository_free(g_repo);
 g_repo = ((void*)0);

 cl_fixture_cleanup("./foo.git");
}
