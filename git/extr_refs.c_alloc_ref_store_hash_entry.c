
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store_hash_entry {struct ref_store* refs; int ent; } ;
struct ref_store {int dummy; } ;


 int FLEX_ALLOC_STR (struct ref_store_hash_entry*,char const*,char const*) ;
 int hashmap_entry_init (int *,int ) ;
 int strhash (char const*) ;

__attribute__((used)) static struct ref_store_hash_entry *alloc_ref_store_hash_entry(
  const char *name, struct ref_store *refs)
{
 struct ref_store_hash_entry *entry;

 FLEX_ALLOC_STR(entry, name, name);
 hashmap_entry_init(&entry->ent, strhash(name));
 entry->refs = refs;
 return entry;
}
