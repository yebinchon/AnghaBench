
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct args_info {size_t pos; size_t argc; char** argv; } ;
typedef scalar_t__ git_repository_state_t ;
typedef int git_repository ;
typedef int git_annotated_commit ;
typedef int checkout_options ;
struct TYPE_2__ {char* message; } ;


 struct args_info ARGS_INFO_INIT ;
 scalar_t__ GIT_REPOSITORY_STATE_NONE ;
 int fprintf (int ,char*,...) ;
 int git_annotated_commit_free (int *) ;
 TYPE_1__* git_error_last () ;
 scalar_t__ git_repository_state (int *) ;
 int parse_options (char const**,int *,struct args_info*) ;
 int perform_checkout_ref (int *,int *,int *) ;
 int resolve_refish (int **,int *,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;

int lg2_checkout(git_repository *repo, int argc, char **argv)
{
 struct args_info args = ARGS_INFO_INIT;
 checkout_options opts;
 git_repository_state_t state;
 git_annotated_commit *checkout_target = ((void*)0);
 int err = 0;
 const char *path = ".";


 parse_options(&path, &opts, &args);


 state = git_repository_state(repo);
 if (state != GIT_REPOSITORY_STATE_NONE) {
  fprintf(stderr, "repository is in unexpected state %d\n", state);
  goto cleanup;
 }

 if (args.pos >= args.argc) {
  fprintf(stderr, "unhandled\n");
  err = -1;
  goto cleanup;
 } else if (!strcmp("--", args.argv[args.pos])) {




  fprintf(stderr, "unhandled path-based checkout\n");
  err = 1;
  goto cleanup;
 } else {



  err = resolve_refish(&checkout_target, repo, args.argv[args.pos]);
  if (err != 0) {
   fprintf(stderr, "failed to resolve %s: %s\n", args.argv[args.pos], git_error_last()->message);
   goto cleanup;
  }
  err = perform_checkout_ref(repo, checkout_target, &opts);
 }

cleanup:
 git_annotated_commit_free(checkout_target);

 return err;
}
