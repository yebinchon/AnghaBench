
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dir_hash; } ;
struct dir_entry {int namelen; struct dir_entry* parent; int ent; } ;
struct cache_entry {int * name; } ;


 int FLEX_ALLOC_MEM (struct dir_entry*,int ,int *,int) ;
 struct dir_entry* find_dir_entry (struct index_state*,int *,int) ;
 int hashmap_add (int *,int *) ;
 int hashmap_entry_init (int *,int ) ;
 int is_dir_sep (int ) ;
 int memihash (int *,int) ;
 int name ;

__attribute__((used)) static struct dir_entry *hash_dir_entry(struct index_state *istate,
  struct cache_entry *ce, int namelen)
{







 struct dir_entry *dir;


 while (namelen > 0 && !is_dir_sep(ce->name[namelen - 1]))
  namelen--;
 if (namelen <= 0)
  return ((void*)0);
 namelen--;


 dir = find_dir_entry(istate, ce->name, namelen);
 if (!dir) {

  FLEX_ALLOC_MEM(dir, name, ce->name, namelen);
  hashmap_entry_init(&dir->ent, memihash(ce->name, namelen));
  dir->namelen = namelen;
  hashmap_add(&istate->dir_hash, &dir->ent);


  dir->parent = hash_dir_entry(istate, ce, namelen);
 }
 return dir;
}
