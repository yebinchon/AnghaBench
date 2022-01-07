
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_and_oids_entry {char* path; int trees; int ent; } ;
struct object_id {int dummy; } ;
struct hashmap {int dummy; } ;


 int ent ;
 int hashmap_entry_init (int *,int) ;
 struct path_and_oids_entry* hashmap_get_entry (struct hashmap*,struct path_and_oids_entry*,int ,int *) ;
 int hashmap_put (struct hashmap*,int *) ;
 int oidset_init (int *,int) ;
 int oidset_insert (int *,struct object_id const*) ;
 int strhash (char const*) ;
 struct path_and_oids_entry* xcalloc (int,int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void paths_and_oids_insert(struct hashmap *map,
      const char *path,
      const struct object_id *oid)
{
 int hash = strhash(path);
 struct path_and_oids_entry key;
 struct path_and_oids_entry *entry;

 hashmap_entry_init(&key.ent, hash);


 key.path = (char *)path;
 oidset_init(&key.trees, 0);

 entry = hashmap_get_entry(map, &key, ent, ((void*)0));
 if (!entry) {
  entry = xcalloc(1, sizeof(struct path_and_oids_entry));
  hashmap_entry_init(&entry->ent, hash);
  entry->path = xstrdup(key.path);
  oidset_init(&entry->trees, 16);
  hashmap_put(map, &entry->ent);
 }

 oidset_insert(&entry->trees, oid);
}
