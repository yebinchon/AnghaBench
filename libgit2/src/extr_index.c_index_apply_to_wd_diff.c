
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct foreach_diff_data {unsigned int member_2; void* member_4; int * pathspec; int member_3; int * member_1; int * member_0; } ;
typedef int git_strarray ;
typedef int git_repository ;
typedef int git_pathspec ;
typedef int git_index_matched_path_cb ;
typedef int git_index ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_TYPECHANGE ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ;
 unsigned int GIT_INDEX_ADD_FORCE ;
 int INDEX_ACTION_ADDALL ;
 int INDEX_ACTION_UPDATE ;
 int * INDEX_OWNER (int *) ;
 int apply_each_file ;
 int assert (int) ;
 int create_index_error (int,char*) ;
 int git_diff_foreach (int *,int ,int *,int *,int *,struct foreach_diff_data*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_1__*) ;
 int git_error_set_after_callback (int) ;
 int git_pathspec__clear (int *) ;
 int git_pathspec__init (int *,int const*) ;

__attribute__((used)) static int index_apply_to_wd_diff(git_index *index, int action, const git_strarray *paths,
      unsigned int flags,
      git_index_matched_path_cb cb, void *payload)
{
 int error;
 git_diff *diff;
 git_pathspec ps;
 git_repository *repo;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 struct foreach_diff_data data = {
  index,
  ((void*)0),
  flags,
  cb,
  payload,
 };

 assert(index);
 assert(action == INDEX_ACTION_UPDATE || action == INDEX_ACTION_ADDALL);

 repo = INDEX_OWNER(index);

 if (!repo) {
  return create_index_error(-1,
   "cannot run update; the index is not backed up by a repository.");
 }






 if ((error = git_pathspec__init(&ps, paths)) < 0)
  return error;

 opts.flags = GIT_DIFF_INCLUDE_TYPECHANGE;
 if (action == INDEX_ACTION_ADDALL) {
  opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED |
   GIT_DIFF_RECURSE_UNTRACKED_DIRS;

  if (flags == GIT_INDEX_ADD_FORCE)
   opts.flags |= GIT_DIFF_INCLUDE_IGNORED;
 }

 if ((error = git_diff_index_to_workdir(&diff, repo, index, &opts)) < 0)
  goto cleanup;

 data.pathspec = &ps;
 error = git_diff_foreach(diff, apply_each_file, ((void*)0), ((void*)0), ((void*)0), &data);
 git_diff_free(diff);

 if (error)
  git_error_set_after_callback(error);

cleanup:
 git_pathspec__clear(&ps);
 return error;
}
