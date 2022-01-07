
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_entry {int dummy; } ;
struct hash_entry {scalar_t__ timestamp; } ;
struct entry {int timestamp; struct hash_entry* hash_entry; } ;


 int cache_assign_data (struct entry*) ;
 int cache_update ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int verbosity ;

int cache_reload_local (struct entry *entry, struct hash_entry *hash_entry, struct index_entry *index_entry) {
  if (verbosity >= 4 && entry->hash_entry) {
    fprintf (stderr, "entry->hash_entry->timestamp = %d, entry->timestamp = %d\n", entry->hash_entry->timestamp, entry->timestamp);
  }

  if (!entry->hash_entry || entry->hash_entry != hash_entry || entry->hash_entry->timestamp != entry->timestamp) {
    if (verbosity >= 4) {
      fprintf (stderr, "Reloading cache information.\n");
    }
    entry->hash_entry = hash_entry;
    cache_assign_data (entry);
    cache_update++;
  }
  return 0;
}
