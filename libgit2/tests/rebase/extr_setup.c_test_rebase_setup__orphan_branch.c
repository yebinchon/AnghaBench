
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_rebase ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
typedef int git_annotated_commit ;


 int GIT_OBJECT_COMMIT ;
 int GIT_REPOSITORY_STATE_NONE ;
 int GIT_REPOSITORY_STATE_REBASE_MERGE ;
 int cl_assert_equal_file (char*,int,char*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_state (int ) ;
 int repo ;

void test_rebase_setup__orphan_branch(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_reference *head;
 git_commit *head_commit;
 git_oid head_id;

 cl_assert_equal_i(GIT_REPOSITORY_STATE_NONE, git_repository_state(repo));

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/barley"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/master"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), ((void*)0)));

 cl_assert_equal_i(GIT_REPOSITORY_STATE_REBASE_MERGE, git_repository_state(repo));

 git_oid_fromstr(&head_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
 cl_git_pass(git_repository_head(&head, repo));
 cl_git_pass(git_reference_peel((git_object **)&head_commit, head, GIT_OBJECT_COMMIT));
 cl_assert_equal_oid(&head_id, git_commit_id(head_commit));

 cl_assert_equal_file("12c084412b952396962eb420716df01022b847cc\n", 41, "rebase/.git/ORIG_HEAD");

 cl_assert_equal_file("aa4c42aecdfc7cd989bbc3209934ea7cda3f4d88\n", 41, "rebase/.git/rebase-merge/cmt.1");
 cl_assert_equal_file("e4f809f826c1a9fc929874bc0e4644dd2f2a1af4\n", 41, "rebase/.git/rebase-merge/cmt.2");
 cl_assert_equal_file("9539b2cc291d6a6b1b266df8474d31fdd344dd79\n", 41, "rebase/.git/rebase-merge/cmt.3");
 cl_assert_equal_file("013cc32d341bab0e6f039f50f153c18986f16c58\n", 41, "rebase/.git/rebase-merge/cmt.4");
 cl_assert_equal_file("12c084412b952396962eb420716df01022b847cc\n", 41, "rebase/.git/rebase-merge/cmt.5");
 cl_assert_equal_file("5\n", 2, "rebase/.git/rebase-merge/end");
 cl_assert_equal_file("efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\n", 41, "rebase/.git/rebase-merge/onto");
 cl_assert_equal_file("master\n", 7, "rebase/.git/rebase-merge/onto_name");
 cl_assert_equal_file("12c084412b952396962eb420716df01022b847cc\n", 41, "rebase/.git/rebase-merge/orig-head");

 git_commit_free(head_commit);
 git_reference_free(head);
 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_rebase_free(rebase);
}
