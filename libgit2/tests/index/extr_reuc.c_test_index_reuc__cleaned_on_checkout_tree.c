
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
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int repo ;
 int reuc_entry_exists () ;
 int test_index_reuc__add () ;

void test_index_reuc__cleaned_on_checkout_tree(void)
{
 git_oid oid;
 git_object *obj;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 test_index_reuc__add();
 cl_git_pass(git_reference_name_to_id(&oid, repo, "refs/heads/master"));
 cl_git_pass(git_object_lookup(&obj, repo, &oid, GIT_OBJECT_ANY));
 cl_git_pass(git_checkout_tree(repo, obj, &opts));
 cl_assert(reuc_entry_exists() == 0);

 git_object_free(obj);
}
