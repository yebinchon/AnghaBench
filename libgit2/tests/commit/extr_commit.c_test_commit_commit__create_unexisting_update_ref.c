
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_signature ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_commit ;


 int _repo ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_create (int *,int ,char*,int *,int *,int *,char*,int *,int,int const**) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_target (int *) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

void test_commit_commit__create_unexisting_update_ref(void)
{
 git_oid oid;
 git_tree *tree;
 git_commit *commit;
 git_signature *s;
 git_reference *ref;

 git_oid_fromstr(&oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 cl_git_pass(git_commit_lookup(&commit, _repo, &oid));

 git_oid_fromstr(&oid, "944c0f6e4dfa41595e6eb3ceecdb14f50fe18162");
 cl_git_pass(git_tree_lookup(&tree, _repo, &oid));

 cl_git_pass(git_signature_now(&s, "alice", "alice@example.com"));

 cl_git_fail(git_reference_lookup(&ref, _repo, "refs/heads/foo/bar"));
 cl_git_pass(git_commit_create(&oid, _repo, "refs/heads/foo/bar", s, s,
          ((void*)0), "some msg", tree, 1, (const git_commit **) &commit));


 cl_git_fail(git_commit_create(&oid, _repo, "refs/heads/foo/bar", s, s,
          ((void*)0), "some msg", tree, 1, (const git_commit **) &commit));

 cl_git_pass(git_reference_lookup(&ref, _repo, "refs/heads/foo/bar"));
 cl_assert_equal_oid(&oid, git_reference_target(ref));

 git_tree_free(tree);
 git_commit_free(commit);
 git_signature_free(s);
 git_reference_free(ref);
}
