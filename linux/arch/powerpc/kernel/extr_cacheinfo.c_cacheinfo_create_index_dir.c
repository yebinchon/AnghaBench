
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_index_dir {struct cache_index_dir* next; int kobj; struct cache* cache; } ;
struct cache_dir {struct cache_index_dir* index; int kobj; } ;
struct cache {int dummy; } ;


 int GFP_KERNEL ;
 int cache_index_type ;
 int cacheinfo_create_index_opt_attrs (struct cache_index_dir*) ;
 int kobject_init_and_add (int *,int *,int ,char*,int) ;
 int kobject_put (int *) ;
 struct cache_index_dir* kzalloc (int,int ) ;

__attribute__((used)) static void cacheinfo_create_index_dir(struct cache *cache, int index,
           struct cache_dir *cache_dir)
{
 struct cache_index_dir *index_dir;
 int rc;

 index_dir = kzalloc(sizeof(*index_dir), GFP_KERNEL);
 if (!index_dir)
  return;

 index_dir->cache = cache;

 rc = kobject_init_and_add(&index_dir->kobj, &cache_index_type,
      cache_dir->kobj, "index%d", index);
 if (rc) {
  kobject_put(&index_dir->kobj);
  return;
 }

 index_dir->next = cache_dir->index;
 cache_dir->index = index_dir;

 cacheinfo_create_index_opt_attrs(index_dir);
}
