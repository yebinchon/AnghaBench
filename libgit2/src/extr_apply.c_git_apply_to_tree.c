
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
typedef int git_reader ;
typedef int git_index ;
struct TYPE_4__ {int path; } ;
struct TYPE_5__ {scalar_t__ status; TYPE_1__ old_file; } ;
typedef TYPE_2__ git_diff_delta ;
typedef int git_diff ;
typedef int git_apply_options ;


 int GIT_APPLY_OPTIONS_INIT ;
 scalar_t__ GIT_DELTA_DELETED ;
 scalar_t__ GIT_DELTA_RENAMED ;
 int apply_deltas (int *,int *,int *,int *,int *,int *,int *) ;
 int assert (int ) ;
 TYPE_2__* git_diff_get_delta (int *,size_t) ;
 size_t git_diff_num_deltas (int *) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_remove (int *,int ,int ) ;
 int git_reader_for_index (int **,int *,int *) ;
 int git_reader_for_tree (int **,int *) ;
 int git_reader_free (int *) ;
 int memcpy (int *,int const*,int) ;

int git_apply_to_tree(
 git_index **out,
 git_repository *repo,
 git_tree *preimage,
 git_diff *diff,
 const git_apply_options *given_opts)
{
 git_index *postimage = ((void*)0);
 git_reader *pre_reader = ((void*)0), *post_reader = ((void*)0);
 git_apply_options opts = GIT_APPLY_OPTIONS_INIT;
 const git_diff_delta *delta;
 size_t i;
 int error = 0;

 assert(out && repo && preimage && diff);

 *out = ((void*)0);

 if (given_opts)
  memcpy(&opts, given_opts, sizeof(git_apply_options));

 if ((error = git_reader_for_tree(&pre_reader, preimage)) < 0)
  goto done;





 if ((error = git_index_new(&postimage)) < 0 ||
  (error = git_index_read_tree(postimage, preimage)) < 0 ||
  (error = git_reader_for_index(&post_reader, repo, postimage)) < 0)
  goto done;






 for (i = 0; i < git_diff_num_deltas(diff); i++) {
  delta = git_diff_get_delta(diff, i);

  if (delta->status == GIT_DELTA_DELETED ||
   delta->status == GIT_DELTA_RENAMED) {
   if ((error = git_index_remove(postimage,
     delta->old_file.path, 0)) < 0)
    goto done;
  }
 }

 if ((error = apply_deltas(repo, pre_reader, ((void*)0), post_reader, postimage, diff, &opts)) < 0)
  goto done;

 *out = postimage;

done:
 if (error < 0)
  git_index_free(postimage);

 git_reader_free(pre_reader);
 git_reader_free(post_reader);

 return error;
}
