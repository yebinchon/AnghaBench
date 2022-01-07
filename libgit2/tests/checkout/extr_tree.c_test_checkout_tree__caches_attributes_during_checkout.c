
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_10__ {TYPE_1__ paths; int checkout_strategy; int progress_cb; } ;
typedef TYPE_2__ git_checkout_options ;
struct TYPE_11__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_OBJECT_ANY ;
 int assert_on_branch (int ,char*) ;
 int cl_assert_equal_strn (int ,char*,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_checkout_tree (int ,int *,TYPE_2__*) ;
 int git_futils_readbuffer (TYPE_3__*,char*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int update_attr_callback ;

void test_checkout_tree__caches_attributes_during_checkout(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_oid oid;
 git_object *obj = ((void*)0);
 git_buf ident1 = GIT_BUF_INIT, ident2 = GIT_BUF_INIT;
 char *ident_paths[] = { "ident1.txt", "ident2.txt" };

 opts.progress_cb = update_attr_callback;

 assert_on_branch(g_repo, "master");
 opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 opts.paths.strings = ident_paths;
 opts.paths.count = 2;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "refs/heads/ident"));
 cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));

 cl_git_pass(git_checkout_tree(g_repo, obj, &opts));

 cl_git_pass(git_futils_readbuffer(&ident1, "testrepo/ident1.txt"));
 cl_git_pass(git_futils_readbuffer(&ident2, "testrepo/ident2.txt"));

 cl_assert_equal_strn(ident1.ptr, "# $Id$", 6);
 cl_assert_equal_strn(ident2.ptr, "# $Id$", 6);

 cl_git_pass(git_checkout_tree(g_repo, obj, &opts));

 cl_git_pass(git_futils_readbuffer(&ident1, "testrepo/ident1.txt"));
 cl_git_pass(git_futils_readbuffer(&ident2, "testrepo/ident2.txt"));

 cl_assert_equal_strn(ident1.ptr, "# $Id: ", 7);
 cl_assert_equal_strn(ident2.ptr, "# $Id: ", 7);

 git_buf_dispose(&ident1);
 git_buf_dispose(&ident2);
 git_object_free(obj);
}
