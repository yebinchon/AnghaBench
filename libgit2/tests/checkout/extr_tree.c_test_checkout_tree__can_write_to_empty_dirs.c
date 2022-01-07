
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_OBJECT_ANY ;
 int assert_on_branch (int ,char*) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_path_isfile (char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int p_mkdir (char*,int) ;

void test_checkout_tree__can_write_to_empty_dirs(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_oid oid;
 git_object *obj = ((void*)0);

 assert_on_branch(g_repo, "master");

 cl_git_pass(p_mkdir("testrepo/a", 0777));




 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "refs/heads/dir"));
 cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));

 cl_git_pass(git_checkout_tree(g_repo, obj, &opts));

 cl_assert(git_path_isfile("testrepo/a/b.txt"));

 git_object_free(obj);
}
