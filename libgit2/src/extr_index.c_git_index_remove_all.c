
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strarray ;
typedef int git_index_matched_path_cb ;
typedef int git_index ;


 int INDEX_ACTION_REMOVE ;
 int git_error_set_after_callback (int) ;
 int index_apply_to_all (int *,int ,int const*,int ,void*) ;

int git_index_remove_all(
 git_index *index,
 const git_strarray *pathspec,
 git_index_matched_path_cb cb,
 void *payload)
{
 int error = index_apply_to_all(
  index, INDEX_ACTION_REMOVE, pathspec, cb, payload);

 if (error)
  git_error_set_after_callback(error);

 return error;
}
