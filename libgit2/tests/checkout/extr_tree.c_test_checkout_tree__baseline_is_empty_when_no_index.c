
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_object ;
struct TYPE_4__ {size_t* notify_payload; int checkout_strategy; int notify_cb; int notify_flags; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 int GIT_CHECKOUT_NOTIFY_CONFLICT ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_ECONFLICT ;
 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int assert_on_branch (int ,char*) ;
 int assert_status_entrycount (int ,int ) ;
 int checkout_conflict_count_cb ;
 int cl_assert_equal_i (int,size_t) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int p_unlink (char*) ;

void test_checkout_tree__baseline_is_empty_when_no_index(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_reference *head;
 git_object *obj;
 size_t conflicts = 0;

 assert_on_branch(g_repo, "master");

 cl_git_pass(git_repository_head(&head, g_repo));
 cl_git_pass(git_reference_peel(&obj, head, GIT_OBJECT_COMMIT));

 cl_git_pass(git_reset(g_repo, obj, GIT_RESET_HARD, ((void*)0)));

 cl_must_pass(p_unlink("testrepo/.git/index"));




 opts.checkout_strategy &= ~GIT_CHECKOUT_FORCE;
 opts.notify_flags = GIT_CHECKOUT_NOTIFY_CONFLICT;
 opts.notify_cb = checkout_conflict_count_cb;
 opts.notify_payload = &conflicts;

 cl_git_fail_with(GIT_ECONFLICT, git_checkout_tree(g_repo, obj, &opts));
 cl_assert_equal_i(4, conflicts);


 opts.checkout_strategy |= GIT_CHECKOUT_FORCE;
 cl_git_pass(git_checkout_tree(g_repo, obj, &opts));

 assert_status_entrycount(g_repo, 0);

 git_object_free(obj);
 git_reference_free(head);
}
