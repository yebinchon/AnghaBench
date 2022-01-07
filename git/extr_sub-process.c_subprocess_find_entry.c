
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_entry {char const* cmd; int ent; } ;
struct hashmap {int dummy; } ;


 int ent ;
 int hashmap_entry_init (int *,int ) ;
 struct subprocess_entry* hashmap_get_entry (struct hashmap*,struct subprocess_entry*,int ,int *) ;
 int strhash (char const*) ;

struct subprocess_entry *subprocess_find_entry(struct hashmap *hashmap, const char *cmd)
{
 struct subprocess_entry key;

 hashmap_entry_init(&key.ent, strhash(cmd));
 key.cmd = cmd;
 return hashmap_get_entry(hashmap, &key, ent, ((void*)0));
}
