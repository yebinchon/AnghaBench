
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ path; int mode; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_11__ {int tree; } ;
typedef TYPE_2__ git_index ;


 int GIT_ERROR_INDEX ;
 int assert (int) ;
 int git_error_set (int ,char*) ;
 int git_tree_cache_invalidate_path (int ,scalar_t__) ;
 int index_entry_dup (TYPE_1__**,TYPE_2__*,TYPE_1__ const*) ;
 int index_insert (TYPE_2__*,TYPE_1__**,int,int,int,int) ;
 int valid_filemode (int ) ;

int git_index_add(git_index *index, const git_index_entry *source_entry)
{
 git_index_entry *entry = ((void*)0);
 int ret;

 assert(index && source_entry && source_entry->path);

 if (!valid_filemode(source_entry->mode)) {
  git_error_set(GIT_ERROR_INDEX, "invalid entry mode");
  return -1;
 }

 if ((ret = index_entry_dup(&entry, index, source_entry)) < 0 ||
  (ret = index_insert(index, &entry, 1, 1, 1, 0)) < 0)
  return ret;

 git_tree_cache_invalidate_path(index->tree, entry->path);
 return 0;
}
