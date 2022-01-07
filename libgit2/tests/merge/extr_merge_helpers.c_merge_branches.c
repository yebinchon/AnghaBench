
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
typedef int git_merge_options ;
struct TYPE_6__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int git_annotated_commit ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int *,int *) ;
 int git_checkout_head (int *,TYPE_1__*) ;
 int git_merge (int *,int const**,int,int *,TYPE_1__*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char const*) ;
 int git_reference_symbolic_create (int **,int *,char*,char const*,int,int *) ;

int merge_branches(git_repository *repo,
 const char *ours_branch, const char *theirs_branch,
 git_merge_options *merge_opts, git_checkout_options *checkout_opts)
{
 git_reference *head_ref, *theirs_ref;
 git_annotated_commit *theirs_head;
 git_checkout_options head_checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

 head_checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_reference_symbolic_create(&head_ref, repo, "HEAD", ours_branch, 1, ((void*)0)));
 cl_git_pass(git_checkout_head(repo, &head_checkout_opts));

 cl_git_pass(git_reference_lookup(&theirs_ref, repo, theirs_branch));
 cl_git_pass(git_annotated_commit_from_ref(&theirs_head, repo, theirs_ref));

 cl_git_pass(git_merge(repo, (const git_annotated_commit **)&theirs_head, 1, merge_opts, checkout_opts));

 git_reference_free(head_ref);
 git_reference_free(theirs_ref);
 git_annotated_commit_free(theirs_head);

 return 0;
}
