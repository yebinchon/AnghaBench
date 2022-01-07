
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dir_hash; } ;
struct dir_entry {unsigned int namelen; int ent; } ;


 int ent ;
 int hashmap_entry_init (int *,unsigned int) ;
 struct dir_entry* hashmap_get_entry (int *,struct dir_entry*,int ,char const*) ;

__attribute__((used)) static struct dir_entry *find_dir_entry__hash(struct index_state *istate,
  const char *name, unsigned int namelen, unsigned int hash)
{
 struct dir_entry key;
 hashmap_entry_init(&key.ent, hash);
 key.namelen = namelen;
 return hashmap_get_entry(&istate->dir_hash, &key, ent, name);
}
