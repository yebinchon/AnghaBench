#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hash_entry {int timestamp; } ;
struct entry {int timestamp; struct hash_entry* hash_entry; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entry*) ; 
 int /*<<< orphan*/  cache_update ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct hash_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC3 (struct entry *entry) {
  if (verbosity >= 4 && entry->hash_entry) {
    FUNC1 (stderr, "entry->hash_entry->timestamp = %d, entry->timestamp = %d\n", entry->hash_entry->timestamp, entry->timestamp);
  }
  struct hash_entry *hash_entry = FUNC2 (entry->key, entry->key_len);
  if (!entry->hash_entry || entry->hash_entry != hash_entry || entry->hash_entry->timestamp != entry->timestamp) {
  //if ((!entry->hash_entry && hash_entry) || (hash_entry && entry->hash_entry->timestamp != entry->timestamp) || entry->data.data_len == -2) {
    if (verbosity >= 4) {
      FUNC1 (stderr, "Reloading cache information. Hash_entry = %p\n", hash_entry);
    }
    //cache_assign_hash_entry (entry);
    entry->hash_entry = hash_entry;
    FUNC0 (entry);
    cache_update++;
  }
  return 0;
}