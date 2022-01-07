
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_7__ {int perfdata_cb; int progress_cb; int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int git_annotated_commit ;
struct TYPE_8__ {scalar_t__ perf; scalar_t__ progress; scalar_t__ force; } ;
typedef TYPE_2__ checkout_options ;
struct TYPE_9__ {char* message; } ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int fprintf (int ,char*,char*) ;
 int git_annotated_commit_id (int *) ;
 scalar_t__ git_annotated_commit_ref (int *) ;
 int git_checkout_tree (int *,int const*,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int *,int ) ;
 TYPE_4__* git_error_last () ;
 int git_repository_set_head (int *,scalar_t__) ;
 int git_repository_set_head_detached_from_annotated (int *,int *) ;
 int print_checkout_progress ;
 int print_perf_data ;
 int stderr ;

__attribute__((used)) static int perform_checkout_ref(git_repository *repo, git_annotated_commit *target, checkout_options *opts)
{
 git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_commit *target_commit = ((void*)0);
 int err;


 checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
 if (opts->force)
  checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 if (opts->progress)
  checkout_opts.progress_cb = print_checkout_progress;

 if (opts->perf)
  checkout_opts.perfdata_cb = print_perf_data;


 err = git_commit_lookup(&target_commit, repo, git_annotated_commit_id(target));
 if (err != 0) {
  fprintf(stderr, "failed to lookup commit: %s\n", git_error_last()->message);
  goto cleanup;
 }
 err = git_checkout_tree(repo, (const git_object *)target_commit, &checkout_opts);
 if (err != 0) {
  fprintf(stderr, "failed to checkout tree: %s\n", git_error_last()->message);
  goto cleanup;
 }







 if (git_annotated_commit_ref(target)) {
  err = git_repository_set_head(repo, git_annotated_commit_ref(target));
 } else {
  err = git_repository_set_head_detached_from_annotated(repo, target);
 }
 if (err != 0) {
  fprintf(stderr, "failed to update HEAD reference: %s\n", git_error_last()->message);
  goto cleanup;
 }

cleanup:
 git_commit_free(target_commit);

 return err;
}
