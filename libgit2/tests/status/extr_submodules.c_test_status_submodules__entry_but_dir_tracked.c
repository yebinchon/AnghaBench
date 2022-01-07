
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_status_list ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_diff ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_commit_create (int *,int *,int *,int *,int *,int *,char*,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,int *) ;
 int git_diff_num_deltas (int *) ;
 int git_diff_tree_to_index (int **,int *,int *,int *,int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_reference_create (int **,int *,char*,int *,int,char*) ;
 int git_reference_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;
 int git_status_list_entrycount (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int *,int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int *,int *) ;
 int p_mkdir (char*,int) ;

void test_status_submodules__entry_but_dir_tracked(void)
{
 git_repository *repo;
 git_status_list *status;
 git_diff *diff;
 git_index *index;
 git_tree *tree;

 cl_git_pass(git_repository_init(&repo, "mixed-submodule", 0));
 cl_git_mkfile("mixed-submodule/.gitmodules", "[submodule \"sub\"]\n path = sub\n url = ../foo\n");
 cl_git_pass(p_mkdir("mixed-submodule/sub", 0777));
 cl_git_mkfile("mixed-submodule/sub/file", "");


 {
  git_oid tree_id, commit_id;
  git_signature *sig;
  git_reference *ref;

  cl_git_pass(git_repository_index(&index, repo));
  cl_git_pass(git_index_add_bypath(index, ".gitmodules"));
  cl_git_pass(git_index_add_bypath(index, "sub/file"));
  cl_git_pass(git_index_write(index));
  cl_git_pass(git_index_write_tree(&tree_id, index));
  cl_git_pass(git_signature_now(&sig, "Sloppy Submoduler", "sloppy@example.com"));
  cl_git_pass(git_tree_lookup(&tree, repo, &tree_id));
  cl_git_pass(git_commit_create(&commit_id, repo, ((void*)0), sig, sig, ((void*)0), "message", tree, 0, ((void*)0)));
  cl_git_pass(git_reference_create(&ref, repo, "refs/heads/master", &commit_id, 1, "commit: foo"));
  git_reference_free(ref);
  git_signature_free(sig);
 }

 cl_git_pass(git_diff_tree_to_index(&diff, repo, tree, index, ((void*)0)));
 cl_assert_equal_i(0, git_diff_num_deltas(diff));
 git_diff_free(diff);

 cl_git_pass(git_diff_index_to_workdir(&diff, repo, index, ((void*)0)));
 cl_assert_equal_i(0, git_diff_num_deltas(diff));
 git_diff_free(diff);

 cl_git_pass(git_status_list_new(&status, repo, ((void*)0)));
 cl_assert_equal_i(0, git_status_list_entrycount(status));

 git_status_list_free(status);
 git_index_free(index);
 git_tree_free(tree);
 git_repository_free(repo);
}
