
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_strarray ;
typedef int git_repository ;
struct TYPE_4__ {int pathspec; } ;
typedef TYPE_1__ git_pathspec ;
typedef int git_iterator ;
typedef int git_index_matched_path_cb ;
typedef int git_index ;


 unsigned int GIT_INDEX_ADD_CHECK_PATHSPEC ;
 unsigned int GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH ;
 unsigned int GIT_INDEX_ADD_FORCE ;
 int INDEX_ACTION_ADDALL ;
 int * INDEX_OWNER (int *) ;
 int assert (int *) ;
 int git_error_set_after_callback (int) ;
 int git_ignore__check_pathspec_for_exact_ignores (int *,int *,int) ;
 int git_iterator_free (int *) ;
 int git_pathspec__clear (TYPE_1__*) ;
 int git_pathspec__init (TYPE_1__*,int const*) ;
 int git_repository__ensure_not_bare (int *,char*) ;
 int index_apply_to_wd_diff (int *,int ,int const*,unsigned int,int ,void*) ;

int git_index_add_all(
 git_index *index,
 const git_strarray *paths,
 unsigned int flags,
 git_index_matched_path_cb cb,
 void *payload)
{
 int error;
 git_repository *repo;
 git_iterator *wditer = ((void*)0);
 git_pathspec ps;
 bool no_fnmatch = (flags & GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH) != 0;

 assert(index);

 repo = INDEX_OWNER(index);
 if ((error = git_repository__ensure_not_bare(repo, "index add all")) < 0)
  return error;

 if ((error = git_pathspec__init(&ps, paths)) < 0)
  return error;


 if ((flags & GIT_INDEX_ADD_CHECK_PATHSPEC) != 0 &&
  (flags & GIT_INDEX_ADD_FORCE) == 0 &&
  (error = git_ignore__check_pathspec_for_exact_ignores(
   repo, &ps.pathspec, no_fnmatch)) < 0)
  goto cleanup;

 error = index_apply_to_wd_diff(index, INDEX_ACTION_ADDALL, paths, flags, cb, payload);

 if (error)
  git_error_set_after_callback(error);

cleanup:
 git_iterator_free(wditer);
 git_pathspec__clear(&ps);

 return error;
}
