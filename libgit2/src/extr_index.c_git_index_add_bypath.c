
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int git_submodule ;
struct TYPE_12__ {int path; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_13__ {int tree; } ;
typedef TYPE_2__ git_index ;
typedef int git_error_state ;


 int GIT_EDIRECTORY ;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int INDEX_OWNER (TYPE_2__*) ;
 int add_repo_as_submodule (TYPE_1__**,TYPE_2__*,char const*) ;
 int assert (int) ;
 int git_error_state_capture (int *,int) ;
 int git_error_state_free (int *) ;
 int git_error_state_restore (int *) ;
 int git_submodule_add_to_index (int *,int) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char const*) ;
 int git_tree_cache_invalidate_path (int ,int ) ;
 int index_conflict_to_reuc (TYPE_2__*,char const*) ;
 int index_entry_init (TYPE_1__**,TYPE_2__*,char const*) ;
 int index_insert (TYPE_2__*,TYPE_1__**,int,int,int,int) ;

int git_index_add_bypath(git_index *index, const char *path)
{
 git_index_entry *entry = ((void*)0);
 int ret;

 assert(index && path);

 if ((ret = index_entry_init(&entry, index, path)) == 0)
  ret = index_insert(index, &entry, 1, 0, 0, 1);


 if (ret < 0 && ret != GIT_EDIRECTORY)
  return ret;

 if (ret == GIT_EDIRECTORY) {
  git_submodule *sm;
  git_error_state err;

  git_error_state_capture(&err, ret);

  ret = git_submodule_lookup(&sm, INDEX_OWNER(index), path);
  if (ret == GIT_ENOTFOUND)
   return git_error_state_restore(&err);

  git_error_state_free(&err);





  if (ret == GIT_EEXISTS) {
   if ((ret = add_repo_as_submodule(&entry, index, path)) < 0)
    return ret;

   if ((ret = index_insert(index, &entry, 1, 0, 0, 1)) < 0)
    return ret;
  } else if (ret < 0) {
   return ret;
  } else {
   ret = git_submodule_add_to_index(sm, 0);
   git_submodule_free(sm);
   return ret;
  }
 }


 if ((ret = index_conflict_to_reuc(index, path)) < 0 && ret != GIT_ENOTFOUND)
  return ret;

 git_tree_cache_invalidate_path(index->tree, entry->path);
 return 0;
}
