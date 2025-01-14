
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int length; scalar_t__ contents; } ;
typedef TYPE_4__ git_vector ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_15__ {scalar_t__ path; } ;
struct TYPE_14__ {scalar_t__ path; } ;
struct TYPE_18__ {TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_5__ git_diff_delta ;
typedef int git_diff ;
struct TYPE_16__ {char** strings; int count; } ;
struct TYPE_19__ {int * baseline_index; TYPE_3__ paths; int checkout_strategy; } ;
typedef TYPE_6__ git_checkout_options ;
typedef int git_apply_options ;
typedef scalar_t__ git_apply_location_t ;


 scalar_t__ GIT_APPLY_LOCATION_WORKDIR ;
 int GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH ;
 int GIT_CHECKOUT_DONT_UPDATE_INDEX ;
 int GIT_CHECKOUT_DONT_WRITE_INDEX ;
 TYPE_6__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_UNUSED (int *) ;
 TYPE_4__ GIT_VECTOR_INIT ;
 int git_checkout_index (int *,int *,TYPE_6__*) ;
 TYPE_5__* git_diff_get_delta (int *,size_t) ;
 size_t git_diff_num_deltas (int *) ;
 int git_vector_free (TYPE_4__*) ;
 int git_vector_init (TYPE_4__*,size_t,int *) ;
 int git_vector_insert (TYPE_4__*,void*) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int git_apply__to_workdir(
 git_repository *repo,
 git_diff *diff,
 git_index *preimage,
 git_index *postimage,
 git_apply_location_t location,
 git_apply_options *opts)
{
 git_vector paths = GIT_VECTOR_INIT;
 git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;
 const git_diff_delta *delta;
 size_t i;
 int error;

 GIT_UNUSED(opts);





 if ((error = git_vector_init(&paths, git_diff_num_deltas(diff), ((void*)0))) < 0)
  goto done;

 for (i = 0; i < git_diff_num_deltas(diff); i++) {
  delta = git_diff_get_delta(diff, i);

  if ((error = git_vector_insert(&paths, (void *)delta->old_file.path)) < 0)
   goto done;

  if (strcmp(delta->old_file.path, delta->new_file.path) &&
      (error = git_vector_insert(&paths, (void *)delta->new_file.path)) < 0)
   goto done;
 }

 checkout_opts.checkout_strategy |= GIT_CHECKOUT_SAFE;
 checkout_opts.checkout_strategy |= GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH;
 checkout_opts.checkout_strategy |= GIT_CHECKOUT_DONT_WRITE_INDEX;

 if (location == GIT_APPLY_LOCATION_WORKDIR)
  checkout_opts.checkout_strategy |= GIT_CHECKOUT_DONT_UPDATE_INDEX;

 checkout_opts.paths.strings = (char **)paths.contents;
 checkout_opts.paths.count = paths.length;

 checkout_opts.baseline_index = preimage;

 error = git_checkout_index(repo, postimage, &checkout_opts);

done:
 git_vector_free(&paths);
 return error;
}
