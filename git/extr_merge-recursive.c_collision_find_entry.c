
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;
struct collision_entry {char* target_file; int ent; } ;


 int ent ;
 int hashmap_entry_init (int *,int ) ;
 struct collision_entry* hashmap_get_entry (struct hashmap*,struct collision_entry*,int ,int *) ;
 int strhash (char*) ;

__attribute__((used)) static struct collision_entry *collision_find_entry(struct hashmap *hashmap,
          char *target_file)
{
 struct collision_entry key;

 hashmap_entry_init(&key.ent, strhash(target_file));
 key.target_file = target_file;
 return hashmap_get_entry(hashmap, &key, ent, ((void*)0));
}
