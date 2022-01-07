
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reader ;
typedef int git_indexwriter ;
typedef int git_index ;
typedef int git_diff ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_1__ git_apply_options ;
typedef int git_apply_location_t ;


 int GIT_APPLY_CHECK ;



 TYPE_1__ GIT_APPLY_OPTIONS_INIT ;
 int GIT_APPLY_OPTIONS_VERSION ;
 int GIT_EINVALID ;
 int GIT_ERROR_CHECK_VERSION (TYPE_1__ const*,int ,char*) ;
 int GIT_INDEXWRITER_INIT ;
 int apply_deltas (int *,int *,int *,int *,int *,int *,TYPE_1__*) ;
 int assert (int) ;
 int git_apply__to_index (int *,int *,int *,int *,TYPE_1__*) ;
 int git_apply__to_workdir (int *,int *,int *,int *,int,TYPE_1__*) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_indexwriter_cleanup (int *) ;
 int git_indexwriter_commit (int *) ;
 int git_indexwriter_init (int *,int *) ;
 int git_reader_for_index (int **,int *,int *) ;
 int git_reader_for_workdir (int **,int *,int) ;
 int git_reader_free (int *) ;
 int git_repository_index (int **,int *) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

int git_apply(
 git_repository *repo,
 git_diff *diff,
 git_apply_location_t location,
 const git_apply_options *given_opts)
{
 git_indexwriter indexwriter = GIT_INDEXWRITER_INIT;
 git_index *index = ((void*)0), *preimage = ((void*)0), *postimage = ((void*)0);
 git_reader *pre_reader = ((void*)0), *post_reader = ((void*)0);
 git_apply_options opts = GIT_APPLY_OPTIONS_INIT;
 int error = GIT_EINVALID;

 assert(repo && diff);

 GIT_ERROR_CHECK_VERSION(
  given_opts, GIT_APPLY_OPTIONS_VERSION, "git_apply_options");

 if (given_opts)
  memcpy(&opts, given_opts, sizeof(git_apply_options));






 switch (location) {
 case 130:
  error = git_reader_for_workdir(&pre_reader, repo, 1);
  break;
 case 129:
  error = git_reader_for_index(&pre_reader, repo, ((void*)0));
  break;
 case 128:
  error = git_reader_for_workdir(&pre_reader, repo, 0);
  break;
 default:
  assert(0);
 }

 if (error < 0)
  goto done;
 if ((error = git_index_new(&preimage)) < 0 ||
     (error = git_index_new(&postimage)) < 0 ||
     (error = git_reader_for_index(&post_reader, repo, postimage)) < 0)
  goto done;

 if (!(opts.flags & GIT_APPLY_CHECK))
  if ((error = git_repository_index(&index, repo)) < 0 ||
      (error = git_indexwriter_init(&indexwriter, index)) < 0)
   goto done;

 if ((error = apply_deltas(repo, pre_reader, preimage, post_reader, postimage, diff, &opts)) < 0)
  goto done;

 if ((opts.flags & GIT_APPLY_CHECK))
  goto done;

 switch (location) {
 case 130:
  error = git_apply__to_workdir(repo, diff, preimage, postimage, location, &opts);
  break;
 case 129:
  error = git_apply__to_index(repo, diff, preimage, postimage, &opts);
  break;
 case 128:
  error = git_apply__to_workdir(repo, diff, preimage, postimage, location, &opts);
  break;
 default:
  assert(0);
 }

 if (error < 0)
  goto done;

 error = git_indexwriter_commit(&indexwriter);

done:
 git_indexwriter_cleanup(&indexwriter);
 git_index_free(postimage);
 git_index_free(preimage);
 git_index_free(index);
 git_reader_free(pre_reader);
 git_reader_free(post_reader);

 return error;
}
