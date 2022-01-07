
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_signature ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;


 char* GIT_HEAD_FILE ;
 int GIT_OBJECT_TREE ;
 int cl_assert_equal_i (size_t,size_t) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_commit_create (int *,int ,char*,int *,int *,int *,char const*,int *,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_set_head (int ,char*) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;
 int git_tree_free (int *) ;
 size_t reflog_entrycount (int ,char*) ;

void test_refs_reflog_messages__branch_birth(void)
{
 git_signature *sig;
 git_oid id;
 git_tree *tree;
 git_reference *ref;
 const char *msg;
 size_t nentries, nentries_after;

 nentries = reflog_entrycount(g_repo, GIT_HEAD_FILE);

 cl_git_pass(git_signature_now(&sig, "me", "foo@example.com"));

 cl_git_pass(git_repository_head(&ref, g_repo));
 cl_git_pass(git_reference_peel((git_object **) &tree, ref, GIT_OBJECT_TREE));

 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/orphan"));

 nentries_after = reflog_entrycount(g_repo, GIT_HEAD_FILE);

 cl_assert_equal_i(nentries, nentries_after);

 msg = "message 2";
 cl_git_pass(git_commit_create(&id, g_repo, "HEAD", sig, sig, ((void*)0), msg, tree, 0, ((void*)0)));

 cl_assert_equal_i(1, reflog_entrycount(g_repo, "refs/heads/orphan"));

 nentries_after = reflog_entrycount(g_repo, GIT_HEAD_FILE);

 cl_assert_equal_i(nentries + 1, nentries_after);

 git_signature_free(sig);
 git_tree_free(tree);
 git_reference_free(ref);
}
