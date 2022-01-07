
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_oid ;
typedef int git_diff_options ;
typedef int git_diff ;
typedef int git_commit ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_apply_options ;


 int GIT_APPLY_CHECK ;
 int GIT_APPLY_LOCATION_BOTH ;
 TYPE_1__ GIT_APPLY_OPTIONS_INIT ;
 int GIT_DIFF_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_free (int *) ;
 int repo ;
 int validate_index_unchanged (int ) ;
 int validate_workdir_unchanged (int ) ;

void test_apply_check__generate_diff(void)
{
 git_oid a_oid, b_oid;
 git_commit *a_commit, *b_commit;
 git_tree *a_tree, *b_tree;
 git_diff *diff;
 git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
 git_apply_options opts = GIT_APPLY_OPTIONS_INIT;

 cl_git_pass(git_oid_fromstr(&a_oid, "539bd011c4822c560c1d17cab095006b7a10f707"));
 cl_git_pass(git_oid_fromstr(&b_oid, "7c7bf85e978f1d18c0566f702d2cb7766b9c8d4f"));
 cl_git_pass(git_commit_lookup(&a_commit, repo, &a_oid));
 cl_git_pass(git_commit_lookup(&b_commit, repo, &b_oid));

 cl_git_pass(git_commit_tree(&a_tree, a_commit));
 cl_git_pass(git_commit_tree(&b_tree, b_commit));

 opts.flags |= GIT_APPLY_CHECK;
 cl_git_pass(git_diff_tree_to_tree(&diff, repo, a_tree, b_tree, &diff_opts));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_BOTH, &opts));

 validate_index_unchanged(repo);
 validate_workdir_unchanged(repo);

 git_diff_free(diff);
 git_tree_free(a_tree);
 git_tree_free(b_tree);
 git_commit_free(a_commit);
 git_commit_free(b_commit);
}
