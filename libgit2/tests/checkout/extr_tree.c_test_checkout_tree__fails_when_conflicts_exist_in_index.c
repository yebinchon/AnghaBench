
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_OBJECT_ANY ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int create_conflict (char*) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_reference_name_to_id (int *,int ,char*) ;

void test_checkout_tree__fails_when_conflicts_exist_in_index(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_oid oid;
 git_object *obj = ((void*)0);

 opts.checkout_strategy = GIT_CHECKOUT_SAFE;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "HEAD"));
 cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));

 create_conflict("conflicts.txt");

 cl_git_fail(git_checkout_tree(g_repo, obj, &opts));

 git_object_free(obj);
}
