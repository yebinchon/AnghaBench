
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_signature ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_config ;


 int GIT_CONFIG_LEVEL_LOCAL ;
 int _repo ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int git_commit_create_v (int *,int ,char*,int *,int *,int *,char*,int *,int ) ;
 int git_config_free (int *) ;
 int git_config_open_level (int **,int *,int ) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_repository_config (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_repository_init (int *,char*,int ) ;
 int git_signature_default (int **,int ) ;
 int git_signature_free (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

void test_repo_init__init_with_initial_commit(void)
{
 git_index *index;

 cl_set_cleanup(&cleanup_repository, "committed");


 cl_git_pass(git_repository_init(&_repo, "committed", 0));


 cl_git_pass(git_repository_index(&index, _repo));
 cl_git_mkfile("committed/file.txt", "some stuff\n");


 cl_git_pass(git_index_add_bypath(index, "file.txt"));
 cl_git_pass(git_index_write(index));







 {
  git_config *cfg, *local;
  cl_git_pass(git_repository_config(&cfg, _repo));
  cl_git_pass(git_config_open_level(&local, cfg, GIT_CONFIG_LEVEL_LOCAL));
  cl_git_pass(git_config_set_string(local, "user.name", "Test User"));
  cl_git_pass(git_config_set_string(local, "user.email", "t@example.com"));
  git_config_free(local);
  git_config_free(cfg);
 }


 {
  git_signature *sig;
  git_oid tree_id, commit_id;
  git_tree *tree;

  cl_git_pass(git_signature_default(&sig, _repo));
  cl_git_pass(git_index_write_tree(&tree_id, index));
  cl_git_pass(git_tree_lookup(&tree, _repo, &tree_id));

  cl_git_pass(git_commit_create_v(
   &commit_id, _repo, "HEAD", sig, sig,
   ((void*)0), "First", tree, 0));

  git_tree_free(tree);
  git_signature_free(sig);
 }

 git_index_free(index);
}
