
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_commit_create_v (int *,int ,int ,int ,int ,int *,char*,int *,int,int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_name (int *) ;
 int git_reference_target (int *) ;
 int git_repository_head (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_repository_path (int ) ;
 int git_repository_workdir (int ) ;
 int git_reset (int ,int *,int ,TYPE_1__*) ;
 int git_signature_new (int *,char*,char*,int,int ) ;
 int git_submodule_set_url (int ,char*,int ) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int repo ;
 int rewrite_gitmodules (int ) ;
 int signature ;

void test_rebase_submodule__initialize(void)
{
 git_index *index;
 git_oid tree_oid, commit_id;
 git_tree *tree;
 git_commit *parent;
 git_object *obj;
 git_reference *master_ref;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 repo = cl_git_sandbox_init("rebase-submodule");
 cl_git_pass(git_signature_new(&signature,
  "Rebaser", "rebaser@rebaser.rb", 1405694510, 0));

 rewrite_gitmodules(git_repository_workdir(repo));

 cl_git_pass(git_submodule_set_url(repo, "my-submodule", git_repository_path(repo)));


 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_add_bypath(index, ".gitmodules"));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_index_write_tree(&tree_oid, index));
 cl_git_pass(git_tree_lookup(&tree, repo, &tree_oid));

 cl_git_pass(git_repository_head(&master_ref, repo));
 cl_git_pass(git_commit_lookup(&parent, repo, git_reference_target(master_ref)));

 cl_git_pass(git_commit_create_v(&commit_id, repo, git_reference_name(master_ref), signature, signature, ((void*)0), "Fixup .gitmodules", tree, 1, parent));


 cl_git_pass(git_object_lookup(&obj, repo, &commit_id, GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(repo, obj, GIT_RESET_HARD, &opts));

 git_index_free(index);
 git_object_free(obj);
 git_commit_free(parent);
 git_reference_free(master_ref);
 git_tree_free(tree);
}
