
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_entry {scalar_t__ key; int ent; } ;


 int hashmap_entry_init (int *,unsigned int) ;
 int memcpy (scalar_t__,char*,size_t) ;
 int st_add4 (int,size_t,size_t,int) ;
 size_t strlen (char*) ;
 struct test_entry* xmalloc (int ) ;

__attribute__((used)) static struct test_entry *alloc_test_entry(unsigned int hash,
        char *key, char *value)
{
 size_t klen = strlen(key);
 size_t vlen = strlen(value);
 struct test_entry *entry = xmalloc(st_add4(sizeof(*entry), klen, vlen, 2));
 hashmap_entry_init(&entry->ent, hash);
 memcpy(entry->key, key, klen + 1);
 memcpy(entry->key + klen + 1, value, vlen + 1);
 return entry;
}
