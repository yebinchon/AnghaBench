
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {int timestamp; } ;
struct entry {int timestamp; struct hash_entry* hash_entry; int key_len; int key; } ;


 int cache_assign_data (struct entry*) ;
 int cache_update ;
 int fprintf (int ,char*,...) ;
 struct hash_entry* get_entry (int ,int ) ;
 int stderr ;
 int verbosity ;

int cache_reload (struct entry *entry) {
  if (verbosity >= 4 && entry->hash_entry) {
    fprintf (stderr, "entry->hash_entry->timestamp = %d, entry->timestamp = %d\n", entry->hash_entry->timestamp, entry->timestamp);
  }
  struct hash_entry *hash_entry = get_entry (entry->key, entry->key_len);
  if (!entry->hash_entry || entry->hash_entry != hash_entry || entry->hash_entry->timestamp != entry->timestamp) {

    if (verbosity >= 4) {
      fprintf (stderr, "Reloading cache information. Hash_entry = %p\n", hash_entry);
    }

    entry->hash_entry = hash_entry;
    cache_assign_data (entry);
    cache_update++;
  }
  return 0;
}
