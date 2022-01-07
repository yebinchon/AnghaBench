
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_index_entry ;
typedef int git_index ;
struct TYPE_4__ {int path; } ;
struct TYPE_5__ {scalar_t__ status; TYPE_1__ old_file; } ;
typedef TYPE_2__ git_diff_delta ;
typedef int git_diff ;
typedef int git_apply_options ;


 scalar_t__ GIT_DELTA_DELETED ;
 scalar_t__ GIT_DELTA_RENAMED ;
 int GIT_UNUSED (int *) ;
 TYPE_2__* git_diff_get_delta (int *,size_t) ;
 size_t git_diff_num_deltas (int *) ;
 int git_index_add (int *,int const*) ;
 size_t git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int * git_index_get_byindex (int *,size_t) ;
 int git_index_remove (int *,int ,int ) ;
 int git_repository_index (int **,int *) ;

__attribute__((used)) static int git_apply__to_index(
 git_repository *repo,
 git_diff *diff,
 git_index *preimage,
 git_index *postimage,
 git_apply_options *opts)
{
 git_index *index = ((void*)0);
 const git_diff_delta *delta;
 const git_index_entry *entry;
 size_t i;
 int error;

 GIT_UNUSED(preimage);
 GIT_UNUSED(opts);

 if ((error = git_repository_index(&index, repo)) < 0)
  goto done;


 for (i = 0; i < git_diff_num_deltas(diff); i++) {
  delta = git_diff_get_delta(diff, i);

  if (delta->status == GIT_DELTA_DELETED ||
      delta->status == GIT_DELTA_RENAMED) {
   if ((error = git_index_remove(index, delta->old_file.path, 0)) < 0)
    goto done;
  }
 }


 for (i = 0; i < git_index_entrycount(postimage); i++) {
  entry = git_index_get_byindex(postimage, i);

  if ((error = git_index_add(index, entry)) < 0)
   goto done;
 }

done:
 git_index_free(index);
 return error;
}
