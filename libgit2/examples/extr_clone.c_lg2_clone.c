
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int member_0; } ;
struct TYPE_15__ {TYPE_1__ member_0; } ;
typedef TYPE_4__ progress_data ;
typedef int git_repository ;
struct TYPE_16__ {int klass; char* message; } ;
typedef TYPE_5__ git_error ;
struct TYPE_13__ {TYPE_4__* payload; int credentials; int * transfer_progress; int sideband_progress; } ;
struct TYPE_14__ {TYPE_2__ callbacks; } ;
struct TYPE_18__ {TYPE_4__* progress_payload; int progress_cb; int checkout_strategy; } ;
struct TYPE_17__ {TYPE_3__ fetch_opts; TYPE_7__ checkout_opts; } ;
typedef TYPE_6__ git_clone_options ;
typedef TYPE_7__ git_checkout_options ;


 TYPE_7__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 TYPE_6__ GIT_CLONE_OPTIONS_INIT ;
 int checkout_progress ;
 int cred_acquire_cb ;
 int fetch_progress ;
 int git_clone (int **,char const*,char const*,TYPE_6__*) ;
 TYPE_5__* git_error_last () ;
 int git_repository_free (int *) ;
 int printf (char*,...) ;
 int sideband_progress ;

int lg2_clone(git_repository *repo, int argc, char **argv)
{
 progress_data pd = {{0}};
 git_repository *cloned_repo = ((void*)0);
 git_clone_options clone_opts = GIT_CLONE_OPTIONS_INIT;
 git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;
 const char *url = argv[1];
 const char *path = argv[2];
 int error;

 (void)repo;


 if (argc < 3) {
  printf ("USAGE: %s <url> <path>\n", argv[0]);
  return -1;
 }


 checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
 checkout_opts.progress_cb = checkout_progress;
 checkout_opts.progress_payload = &pd;
 clone_opts.checkout_opts = checkout_opts;
 clone_opts.fetch_opts.callbacks.sideband_progress = sideband_progress;
 clone_opts.fetch_opts.callbacks.transfer_progress = &fetch_progress;
 clone_opts.fetch_opts.callbacks.credentials = cred_acquire_cb;
 clone_opts.fetch_opts.callbacks.payload = &pd;


 error = git_clone(&cloned_repo, url, path, &clone_opts);
 printf("\n");
 if (error != 0) {
  const git_error *err = git_error_last();
  if (err) printf("ERROR %d: %s\n", err->klass, err->message);
  else printf("ERROR %d: no detailed info\n", error);
 }
 else if (cloned_repo) git_repository_free(cloned_repo);
 return error;
}
