
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;
struct dir_rename_entry {char* dir; int ent; } ;


 int ent ;
 int hashmap_entry_init (int *,int ) ;
 struct dir_rename_entry* hashmap_get_entry (struct hashmap*,struct dir_rename_entry*,int ,int *) ;
 int strhash (char*) ;

__attribute__((used)) static struct dir_rename_entry *dir_rename_find_entry(struct hashmap *hashmap,
            char *dir)
{
 struct dir_rename_entry key;

 if (dir == ((void*)0))
  return ((void*)0);
 hashmap_entry_init(&key.ent, strhash(dir));
 key.dir = dir;
 return hashmap_get_entry(hashmap, &key, ent, ((void*)0));
}
