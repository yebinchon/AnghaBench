
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct checkout_cancel_at {char* filename; int error; scalar_t__ count; } ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_4__ {int checkout_strategy; struct checkout_cancel_at* notify_payload; int notify_cb; int notify_flags; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 int GIT_CHECKOUT_NOTIFY_UPDATED ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_OBJECT_ANY ;
 int assert_on_branch (int ,char*) ;
 int checkout_cancel_cb ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,scalar_t__) ;
 int cl_git_fail_with (int ,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 scalar_t__ git_path_exists (char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;

void test_checkout_tree__can_cancel_checkout_from_notify(void)
{
 struct checkout_cancel_at ca;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_oid oid;
 git_object *obj = ((void*)0);

 assert_on_branch(g_repo, "master");

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "refs/heads/dir"));
 cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));

 ca.filename = "new.txt";
 ca.error = -5555;
 ca.count = 0;

 opts.notify_flags = GIT_CHECKOUT_NOTIFY_UPDATED;
 opts.notify_cb = checkout_cancel_cb;
 opts.notify_payload = &ca;
 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_assert(!git_path_exists("testrepo/new.txt"));

 cl_git_fail_with(git_checkout_tree(g_repo, obj, &opts), -5555);

 cl_assert(!git_path_exists("testrepo/new.txt"));




 if (git_path_exists("testrepo/.git/CoNfIg"))
  cl_assert_equal_i(3, ca.count);
 else
  cl_assert_equal_i(4, ca.count);


 ca.filename = "README";
 ca.error = 123;
 ca.count = 0;

 cl_git_fail_with(git_checkout_tree(g_repo, obj, &opts), 123);

 cl_assert(!git_path_exists("testrepo/new.txt"));

 if (git_path_exists("testrepo/.git/CoNfIg"))
  cl_assert_equal_i(4, ca.count);
 else
  cl_assert_equal_i(1, ca.count);

 git_object_free(obj);
}
