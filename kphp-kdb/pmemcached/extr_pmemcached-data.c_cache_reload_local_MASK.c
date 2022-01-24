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
struct index_entry {int dummy; } ;
struct hash_entry {scalar_t__ timestamp; } ;
struct entry {int timestamp; struct hash_entry* hash_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entry*) ; 
 int /*<<< orphan*/  cache_update ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC2 (struct entry *entry, struct hash_entry *hash_entry, struct index_entry *index_entry) {
  if (verbosity >= 4 && entry->hash_entry) {
    FUNC1 (stderr, "entry->hash_entry->timestamp = %ld, entry->timestamp = %d\n", entry->hash_entry->timestamp, entry->timestamp);
  }
  //if ((!entry->hash_entry && hash_entry) || (hash_entry && entry->hash_entry->timestamp != entry->timestamp) || entry->data.data_len == -2) {
  if (!entry->hash_entry || entry->hash_entry != hash_entry || entry->hash_entry->timestamp != entry->timestamp) {
    if (verbosity >= 4) {
      FUNC1 (stderr, "Reloading cache information.\n");
    }
    entry->hash_entry = hash_entry;
    FUNC0 (entry);
    cache_update++;
  }
  return 0;
}