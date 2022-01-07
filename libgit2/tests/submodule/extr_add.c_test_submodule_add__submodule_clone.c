
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_signature ;
typedef int git_oid ;
typedef int git_index ;


 int assert_submodule_exists (int ,char*) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_commit_create_from_ids (int *,int ,char*,int *,int *,int *,char*,int *,int ,int *) ;
 int git_index_free (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_repository_index (int **,int ) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;
 int git_submodule_add_finalize (int *) ;
 int git_submodule_add_setup (int **,int ,int ,char*,int) ;
 int git_submodule_clone (int *,int *,int *) ;
 int git_submodule_free (int *) ;

void test_submodule_add__submodule_clone(void)
{
 git_oid tree_id, commit_id;
 git_signature *sig;
 git_submodule *sm;
 git_index *index;

 g_repo = cl_git_sandbox_init("empty_standard_repo");


 cl_git_pass(git_submodule_add_setup(&sm, g_repo, cl_fixture("testrepo.git"), "testrepo-add", 1));
 cl_git_pass(git_submodule_clone(((void*)0), sm, ((void*)0)));
 cl_git_pass(git_submodule_add_finalize(sm));


 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_write_tree(&tree_id, index));
 cl_git_pass(git_signature_now(&sig, "Submoduler", "submoduler@local"));
 cl_git_pass(git_commit_create_from_ids(&commit_id, g_repo, "HEAD", sig, sig, ((void*)0), "A submodule\n",
            &tree_id, 0, ((void*)0)));

 assert_submodule_exists(g_repo, "testrepo-add");

 git_signature_free(sig);
 git_submodule_free(sm);
 git_index_free(index);
}
