
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct ref_dir {int dummy; } ;
struct ref_cache {int root; } ;
struct cache_ref_iterator_level {int index; int prefix_state; struct ref_dir* dir; } ;
struct cache_ref_iterator {int levels_nr; int prefix; struct cache_ref_iterator_level* levels; int levels_alloc; struct ref_iterator base; } ;


 int ALLOC_GROW (struct cache_ref_iterator_level*,int,int ) ;
 int PREFIX_CONTAINS_DIR ;
 int PREFIX_WITHIN_DIR ;
 int base_ref_iterator_init (struct ref_iterator*,int *,int) ;
 int cache_ref_iterator_vtable ;
 struct ref_iterator* empty_ref_iterator_begin () ;
 struct ref_dir* find_containing_dir (struct ref_dir*,char const*,int ) ;
 struct ref_dir* get_ref_dir (int ) ;
 int prime_ref_dir (struct ref_dir*,char const*) ;
 struct cache_ref_iterator* xcalloc (int,int) ;
 int xstrdup (char const*) ;

struct ref_iterator *cache_ref_iterator_begin(struct ref_cache *cache,
           const char *prefix,
           int prime_dir)
{
 struct ref_dir *dir;
 struct cache_ref_iterator *iter;
 struct ref_iterator *ref_iterator;
 struct cache_ref_iterator_level *level;

 dir = get_ref_dir(cache->root);
 if (prefix && *prefix)
  dir = find_containing_dir(dir, prefix, 0);
 if (!dir)

  return empty_ref_iterator_begin();

 if (prime_dir)
  prime_ref_dir(dir, prefix);

 iter = xcalloc(1, sizeof(*iter));
 ref_iterator = &iter->base;
 base_ref_iterator_init(ref_iterator, &cache_ref_iterator_vtable, 1);
 ALLOC_GROW(iter->levels, 10, iter->levels_alloc);

 iter->levels_nr = 1;
 level = &iter->levels[0];
 level->index = -1;
 level->dir = dir;

 if (prefix && *prefix) {
  iter->prefix = xstrdup(prefix);
  level->prefix_state = PREFIX_WITHIN_DIR;
 } else {
  level->prefix_state = PREFIX_CONTAINS_DIR;
 }

 return ref_iterator;
}
