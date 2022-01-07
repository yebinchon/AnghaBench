
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * file; } ;
typedef TYPE_2__ git_attr_file_entry ;
struct TYPE_12__ {size_t source; TYPE_1__* entry; } ;
typedef TYPE_3__ git_attr_file ;
typedef int git_attr_cache ;
struct TYPE_10__ {int path; } ;


 int GIT_REFCOUNT_OWN (TYPE_3__*,int *) ;
 int attr_cache_lock (int *) ;
 TYPE_2__* attr_cache_lookup_entry (int *,int ) ;
 int attr_cache_unlock (int *) ;
 TYPE_3__* git__compare_and_swap (int *,TYPE_3__*,int *) ;
 int git_attr_file__free (TYPE_3__*) ;

__attribute__((used)) static int attr_cache_remove(git_attr_cache *cache, git_attr_file *file)
{
 int error = 0;
 git_attr_file_entry *entry;
 git_attr_file *old = ((void*)0);

 if (!file)
  return 0;

 if ((error = attr_cache_lock(cache)) < 0)
  return error;

 if ((entry = attr_cache_lookup_entry(cache, file->entry->path)) != ((void*)0))
  old = git__compare_and_swap(&entry->file[file->source], file, ((void*)0));

 attr_cache_unlock(cache);

 if (old) {
  GIT_REFCOUNT_OWN(old, ((void*)0));
  git_attr_file__free(old);
 }

 return error;
}
