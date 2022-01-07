
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char** annotated; int annotated_count; scalar_t__ heads; int no_commit; } ;
typedef TYPE_1__ merge_options ;
typedef scalar_t__ git_repository_state_t ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_merge_preference_t ;
struct TYPE_13__ {int file_flags; scalar_t__ flags; } ;
typedef TYPE_2__ git_merge_options ;
typedef int git_merge_analysis_t ;
typedef int git_index ;
struct TYPE_14__ {int checkout_strategy; } ;
typedef TYPE_3__ git_checkout_options ;
typedef int git_annotated_commit ;


 int GIT_CHECKOUT_ALLOW_CONFLICTS ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_3__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_MERGE_ANALYSIS_FASTFORWARD ;
 int GIT_MERGE_ANALYSIS_NORMAL ;
 int GIT_MERGE_ANALYSIS_UNBORN ;
 int GIT_MERGE_ANALYSIS_UP_TO_DATE ;
 int GIT_MERGE_FILE_STYLE_DIFF3 ;
 TYPE_2__ GIT_MERGE_OPTIONS_INIT ;
 int GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY ;
 int GIT_MERGE_PREFERENCE_NO_FASTFORWARD ;
 scalar_t__ GIT_REPOSITORY_STATE_NONE ;
 int assert (int) ;
 int check_lg2 (int,char*,int *) ;
 int create_merge_commit (int *,int *,TYPE_1__*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int free (char**) ;
 int * git_annotated_commit_id (char*) ;
 scalar_t__ git_index_has_conflicts (int *) ;
 int git_merge (int *,int const**,int,TYPE_2__*,TYPE_3__*) ;
 int git_merge_analysis (int*,int*,int *,int const**,int) ;
 int git_repository_index (int **,int *) ;
 scalar_t__ git_repository_state (int *) ;
 int merge_options_init (TYPE_1__*) ;
 int output_conflicts (int *) ;
 int parse_options (char const**,TYPE_1__*,int,char**) ;
 int perform_fastforward (int *,int const*,int) ;
 int printf (char*) ;
 int resolve_heads (int *,TYPE_1__*) ;
 int stderr ;

int lg2_merge(git_repository *repo, int argc, char **argv)
{
 merge_options opts;
 git_index *index;
 git_repository_state_t state;
 git_merge_analysis_t analysis;
 git_merge_preference_t preference;
 const char *path = ".";
 int err = 0;

 merge_options_init(&opts);
 parse_options(&path, &opts, argc, argv);

 state = git_repository_state(repo);
 if (state != GIT_REPOSITORY_STATE_NONE) {
  fprintf(stderr, "repository is in unexpected state %d\n", state);
  goto cleanup;
 }

 err = resolve_heads(repo, &opts);
 if (err != 0)
  goto cleanup;

 err = git_merge_analysis(&analysis, &preference,
                          repo,
                          (const git_annotated_commit **)opts.annotated,
                          opts.annotated_count);
 check_lg2(err, "merge analysis failed", ((void*)0));

 if (analysis & GIT_MERGE_ANALYSIS_UP_TO_DATE) {
  printf("Already up-to-date\n");
  return 0;
 } else if (analysis & GIT_MERGE_ANALYSIS_UNBORN ||
           (analysis & GIT_MERGE_ANALYSIS_FASTFORWARD &&
           !(preference & GIT_MERGE_PREFERENCE_NO_FASTFORWARD))) {
  const git_oid *target_oid;
  if (analysis & GIT_MERGE_ANALYSIS_UNBORN) {
   printf("Unborn\n");
  } else {
   printf("Fast-forward\n");
  }


  target_oid = git_annotated_commit_id(opts.annotated[0]);
  assert(opts.annotated_count == 1);

  return perform_fastforward(repo, target_oid, (analysis & GIT_MERGE_ANALYSIS_UNBORN));
 } else if (analysis & GIT_MERGE_ANALYSIS_NORMAL) {
  git_merge_options merge_opts = GIT_MERGE_OPTIONS_INIT;
  git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

  merge_opts.flags = 0;
  merge_opts.file_flags = GIT_MERGE_FILE_STYLE_DIFF3;

  checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE|GIT_CHECKOUT_ALLOW_CONFLICTS;

  if (preference & GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY) {
   printf("Fast-forward is preferred, but only a merge is possible\n");
   return -1;
  }

  err = git_merge(repo,
                  (const git_annotated_commit **)opts.annotated, opts.annotated_count,
                  &merge_opts, &checkout_opts);
  check_lg2(err, "merge failed", ((void*)0));
 }



 check_lg2(git_repository_index(&index, repo), "failed to get repository index", ((void*)0));

 if (git_index_has_conflicts(index)) {

  output_conflicts(index);
 } else if (!opts.no_commit) {
  create_merge_commit(repo, index, &opts);
  printf("Merge made\n");
 }

cleanup:
 free((char **)opts.heads);
 free(opts.annotated);

 return 0;
}
