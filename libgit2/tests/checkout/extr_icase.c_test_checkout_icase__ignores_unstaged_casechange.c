
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_RESET_HARD ;
 int cl_git_pass (int ) ;
 int cl_rename (char*,char*) ;
 int git_checkout_tree (int ,int const*,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup_resolved (int **,int ,char*,int) ;
 int git_reference_target (int *) ;
 int git_reset (int ,int *,int ,int *) ;
 int repo ;

void test_checkout_icase__ignores_unstaged_casechange(void)
{
 git_reference *orig_ref, *br2_ref;
 git_commit *orig, *br2;
 git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

 checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;

 cl_git_pass(git_reference_lookup_resolved(&orig_ref, repo, "HEAD", 100));
 cl_git_pass(git_commit_lookup(&orig, repo, git_reference_target(orig_ref)));
 cl_git_pass(git_reset(repo, (git_object *)orig, GIT_RESET_HARD, ((void*)0)));

 cl_rename("testrepo/branch_file.txt", "testrepo/Branch_File.txt");

 cl_git_pass(git_reference_lookup_resolved(&br2_ref, repo, "refs/heads/br2", 100));
 cl_git_pass(git_commit_lookup(&br2, repo, git_reference_target(br2_ref)));

 cl_git_pass(git_checkout_tree(repo, (const git_object *)br2, &checkout_opts));

 git_commit_free(orig);
 git_commit_free(br2);
 git_reference_free(orig_ref);
 git_reference_free(br2_ref);
}
