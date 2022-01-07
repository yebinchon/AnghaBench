
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;
typedef int git_diff_options ;
struct TYPE_8__ {scalar_t__ index_updated; } ;
typedef TYPE_2__ git_diff_generated ;
struct TYPE_7__ {int flags; } ;
struct TYPE_9__ {TYPE_1__ opts; } ;
typedef TYPE_3__ git_diff ;


 int GIT_DIFF_UPDATE_INDEX ;
 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 int GIT_ITERATOR_INCLUDE_CONFLICTS ;
 int GIT_ITERATOR_OPTIONS_INIT ;
 int assert (int) ;
 int diff_load_index (int **,int *) ;
 int diff_prepare_iterator_opts (char**,int *,int ,int *,int ,int const*) ;
 int git__free (char*) ;
 int git_diff__from_iterators (TYPE_3__**,int *,int *,int *,int const*) ;
 int git_diff_free (TYPE_3__*) ;
 int git_index_write (int *) ;
 int git_iterator_for_index (int **,int *,int *,int *) ;
 int git_iterator_for_workdir (int **,int *,int *,int *,int *) ;
 int git_iterator_free (int *) ;

int git_diff_index_to_workdir(
 git_diff **out,
 git_repository *repo,
 git_index *index,
 const git_diff_options *opts)
{
 git_iterator_options a_opts = GIT_ITERATOR_OPTIONS_INIT,
  b_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_iterator *a = ((void*)0), *b = ((void*)0);
 git_diff *diff = ((void*)0);
 char *prefix = ((void*)0);
 int error = 0;

 assert(out && repo);

 *out = ((void*)0);

 if (!index && (error = diff_load_index(&index, repo)) < 0)
  return error;

 if ((error = diff_prepare_iterator_opts(&prefix, &a_opts, GIT_ITERATOR_INCLUDE_CONFLICTS,
      &b_opts, GIT_ITERATOR_DONT_AUTOEXPAND, opts)) < 0 ||
     (error = git_iterator_for_index(&a, repo, index, &a_opts)) < 0 ||
     (error = git_iterator_for_workdir(&b, repo, index, ((void*)0), &b_opts)) < 0 ||
     (error = git_diff__from_iterators(&diff, repo, a, b, opts)) < 0)
  goto out;

 if ((diff->opts.flags & GIT_DIFF_UPDATE_INDEX) && ((git_diff_generated *)diff)->index_updated)
  if ((error = git_index_write(index)) < 0)
   goto out;

 *out = diff;
 diff = ((void*)0);
out:
 git_iterator_free(a);
 git_iterator_free(b);
 git_diff_free(diff);
 git__free(prefix);

 return error;
}
