
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_signature ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_ITEROVER ;
 int GIT_OBJECT_COMMIT ;
 int _repo ;
 int _walk ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int git_commit_create (int *,int ,char*,int *,int *,int *,char*,int *,int,int const**) ;
 int git_commit_free (int *) ;
 int git_commit_tree (int **,int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_revwalk_next (int *,int ) ;
 int git_revwalk_push_head (int ) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,char*,char*,long long,int ) ;
 int git_tree_free (int *) ;
 int revwalk_basic_setup_walk (char*) ;

void test_revwalk_basic__big_timestamp(void)
{
 git_reference *head;
 git_commit *tip;
 git_signature *sig;
 git_tree *tree;
 git_oid id;
 int error;

 revwalk_basic_setup_walk("testrepo.git");

 cl_git_pass(git_repository_head(&head, _repo));
 cl_git_pass(git_reference_peel((git_object **) &tip, head, GIT_OBJECT_COMMIT));


 cl_git_pass(git_signature_new(&sig, "Joe", "joe@example.com", 2399662595ll, 0));
 cl_git_pass(git_commit_tree(&tree, tip));

 cl_git_pass(git_commit_create(&id, _repo, "HEAD", sig, sig, ((void*)0), "some message", tree, 1,
  (const git_commit **)&tip));

 cl_git_pass(git_revwalk_push_head(_walk));

 while ((error = git_revwalk_next(&id, _walk)) == 0) {

 }

 cl_assert_equal_i(GIT_ITEROVER, error);

 git_tree_free(tree);
 git_commit_free(tip);
 git_reference_free(head);
 git_signature_free(sig);

}
