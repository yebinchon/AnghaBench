
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_index ;


 int fatal (char*,char*) ;
 scalar_t__ git_commit_create_v (int *,int *,char*,int *,int *,int *,char*,int *,int ) ;
 int git_index_free (int *) ;
 scalar_t__ git_index_write_tree (int *,int *) ;
 scalar_t__ git_repository_index (int **,int *) ;
 scalar_t__ git_signature_default (int **,int *) ;
 int git_signature_free (int *) ;
 int git_tree_free (int *) ;
 scalar_t__ git_tree_lookup (int **,int *,int *) ;

__attribute__((used)) static void create_initial_commit(git_repository *repo)
{
 git_signature *sig;
 git_index *index;
 git_oid tree_id, commit_id;
 git_tree *tree;



 if (git_signature_default(&sig, repo) < 0)
  fatal("Unable to create a commit signature.",
        "Perhaps 'user.name' and 'user.email' are not set");



 if (git_repository_index(&index, repo) < 0)
  fatal("Could not open repository index", ((void*)0));







 if (git_index_write_tree(&tree_id, index) < 0)
  fatal("Unable to write initial tree from index", ((void*)0));

 git_index_free(index);

 if (git_tree_lookup(&tree, repo, &tree_id) < 0)
  fatal("Could not look up initial tree", ((void*)0));
 if (git_commit_create_v(
   &commit_id, repo, "HEAD", sig, sig,
   ((void*)0), "Initial commit", tree, 0) < 0)
  fatal("Could not create the initial commit", ((void*)0));



 git_tree_free(tree);
 git_signature_free(sig);
}
