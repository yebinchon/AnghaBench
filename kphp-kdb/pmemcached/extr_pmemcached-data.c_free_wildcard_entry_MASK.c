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
struct wildcard_entry {int key_len; int data_len; struct wildcard_entry* data; struct wildcard_entry* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  wildcard_cache_entries ; 
 int /*<<< orphan*/  wildcard_cache_memory ; 
 int /*<<< orphan*/  FUNC0 (struct wildcard_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct wildcard_entry*,int) ; 

void FUNC2 (struct wildcard_entry *entry) {
  FUNC0 (entry);
  FUNC1 (entry->key, entry->key_len);
  FUNC1 (entry->data, entry->data_len);
  wildcard_cache_memory -= entry->key_len + entry->data_len + sizeof (struct wildcard_entry);
  FUNC1 (entry, sizeof (struct wildcard_entry));
  wildcard_cache_entries --;
}