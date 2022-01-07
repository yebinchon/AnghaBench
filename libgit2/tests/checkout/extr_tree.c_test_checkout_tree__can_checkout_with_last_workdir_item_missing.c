
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_repository_index (int **,int ) ;
 int git_repository_set_head (int ,char*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int p_mkdir (char*,int) ;
 int p_unlink (char*) ;

void test_checkout_tree__can_checkout_with_last_workdir_item_missing(void)
{
 git_index *index = ((void*)0);
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_oid tree_id, commit_id;
 git_tree *tree = ((void*)0);
 git_commit *commit = ((void*)0);

 git_repository_index(&index, g_repo);

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_reference_name_to_id(&commit_id, g_repo, "refs/heads/master"));
 cl_git_pass(git_commit_lookup(&commit, g_repo, &commit_id));

 cl_git_pass(git_checkout_tree(g_repo, (git_object *)commit, &opts));
 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/master"));

 cl_git_pass(p_mkdir("./testrepo/this-is-dir", 0777));
 cl_git_mkfile("./testrepo/this-is-dir/contained_file", "content\n");

 cl_git_pass(git_index_add_bypath(index, "this-is-dir/contained_file"));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_index_write_tree(&tree_id, index));
 cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_id));

 cl_git_pass(p_unlink("./testrepo/this-is-dir/contained_file"));

 opts.checkout_strategy = GIT_CHECKOUT_SAFE;

 opts.checkout_strategy = 1;
 git_checkout_tree(g_repo, (git_object *)tree, &opts);

 git_tree_free(tree);
 git_commit_free(commit);
 git_index_free(index);
}
