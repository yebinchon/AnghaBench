
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* progress_payload; int progress_cb; } ;


 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_object ;
 TYPE_1__ g_opts ;
 int g_repo ;
 int git_checkout_tree (int ,int ,TYPE_1__*) ;
 int git_revparse_single (int *,int ,char*) ;
 int progress ;

void test_checkout_tree__calls_progress_callback(void)
{
 bool was_called = 0;

 g_opts.progress_cb = progress;
 g_opts.progress_payload = &was_called;

 cl_git_pass(git_revparse_single(&g_object, g_repo, "master"));

 cl_git_pass(git_checkout_tree(g_repo, g_object, &g_opts));

 cl_assert_equal_i(was_called, 1);
}
