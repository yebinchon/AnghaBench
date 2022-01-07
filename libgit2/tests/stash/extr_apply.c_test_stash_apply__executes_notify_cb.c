
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seen_paths {int when; int who; int how; int what; int member_0; } ;
struct TYPE_5__ {struct seen_paths* notify_payload; int notify_flags; int notify_cb; } ;
struct TYPE_6__ {TYPE_1__ checkout_options; } ;
typedef TYPE_2__ git_stash_apply_options ;


 int GIT_CHECKOUT_NOTIFY_ALL ;
 TYPE_2__ GIT_STASH_APPLY_OPTIONS_INIT ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_INDEX_NEW ;
 int GIT_STATUS_WT_MODIFIED ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int ) ;
 int checkout_notify ;
 int cl_assert_equal_b (int,int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_index_has_conflicts (int ) ;
 int git_stash_apply (int ,int ,TYPE_2__*) ;
 int repo ;
 int repo_index ;

void test_stash_apply__executes_notify_cb(void)
{
 git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;
 struct seen_paths seen_paths = {0};

 opts.checkout_options.notify_cb = checkout_notify;
 opts.checkout_options.notify_flags = GIT_CHECKOUT_NOTIFY_ALL;
 opts.checkout_options.notify_payload = &seen_paths;

 cl_git_pass(git_stash_apply(repo, 0, &opts));

 cl_assert_equal_i(git_index_has_conflicts(repo_index), 0);
 assert_status(repo, "what", GIT_STATUS_WT_MODIFIED);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_WT_MODIFIED);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "why", GIT_STATUS_INDEX_NEW);
 assert_status(repo, "where", GIT_STATUS_INDEX_NEW);

 cl_assert_equal_b(1, seen_paths.what);
 cl_assert_equal_b(0, seen_paths.how);
 cl_assert_equal_b(1, seen_paths.who);
 cl_assert_equal_b(1, seen_paths.when);
}
