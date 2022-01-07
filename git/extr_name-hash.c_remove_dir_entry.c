
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dir_hash; } ;
struct dir_entry {int ent; struct dir_entry* parent; int nr; } ;
struct cache_entry {int dummy; } ;


 int ce_namelen (struct cache_entry*) ;
 int free (struct dir_entry*) ;
 struct dir_entry* hash_dir_entry (struct index_state*,struct cache_entry*,int ) ;
 int hashmap_remove (int *,int *,int *) ;

__attribute__((used)) static void remove_dir_entry(struct index_state *istate, struct cache_entry *ce)
{




 struct dir_entry *dir = hash_dir_entry(istate, ce, ce_namelen(ce));
 while (dir && !(--dir->nr)) {
  struct dir_entry *parent = dir->parent;
  hashmap_remove(&istate->dir_hash, &dir->ent, ((void*)0));
  free(dir);
  dir = parent;
 }
}
