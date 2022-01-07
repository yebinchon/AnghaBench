
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_commit ;


 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int *,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write (int *) ;
 int git_reference_name_to_id (int *,int *,char*) ;
 int git_tree_free (int *) ;

__attribute__((used)) static void fill_index_wth_head_entries(git_repository *repo, git_index *index)
{
 git_oid oid;
 git_commit *commit;
 git_tree *tree;

 cl_git_pass(git_reference_name_to_id(&oid, repo, "HEAD"));
 cl_git_pass(git_commit_lookup(&commit, repo, &oid));
 cl_git_pass(git_commit_tree(&tree, commit));

 cl_git_pass(git_index_read_tree(index, tree));
 cl_git_pass(git_index_write(index));

 git_tree_free(tree);
 git_commit_free(commit);
}
