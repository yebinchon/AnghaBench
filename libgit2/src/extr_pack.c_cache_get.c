
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ last_usage; int refcount; } ;
typedef TYPE_1__ git_pack_cache_entry ;
struct TYPE_7__ {int lock; int use_ctr; int entries; } ;
typedef TYPE_2__ git_pack_cache ;
typedef int git_off_t ;


 int git_atomic_inc (int *) ;
 scalar_t__ git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;
 TYPE_1__* git_offmap_get (int ,int ) ;

__attribute__((used)) static git_pack_cache_entry *cache_get(git_pack_cache *cache, git_off_t offset)
{
 git_pack_cache_entry *entry;

 if (git_mutex_lock(&cache->lock) < 0)
  return ((void*)0);

 if ((entry = git_offmap_get(cache->entries, offset)) != ((void*)0)) {
  git_atomic_inc(&entry->refcount);
  entry->last_usage = cache->use_ctr++;
 }
 git_mutex_unlock(&cache->lock);

 return entry;
}
