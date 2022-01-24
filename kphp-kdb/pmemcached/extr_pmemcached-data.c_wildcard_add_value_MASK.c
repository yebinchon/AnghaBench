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
struct wildcard_entry {int key_len; int data_len; int flags; void* data; void* key; } ;
struct data {int data_len; } ;
typedef  int /*<<< orphan*/  hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,char const*,int) ; 
 scalar_t__ memory_for_wildcard_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wildcard_entry*) ; 
 int /*<<< orphan*/  wildcard_cache_entries ; 
 scalar_t__ wildcard_cache_memory ; 
 int /*<<< orphan*/  wildcard_cache_tree ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct data FUNC5 (char const*,int) ; 
 void* FUNC6 (int) ; 

void FUNC7 (const char *key, int key_len, const char *data, int data_len) {
  while (wildcard_cache_memory + data_len + key_len + sizeof (struct wildcard_entry) > memory_for_wildcard_cache) {
    FUNC4 ();
  }
  struct data x = FUNC5 (key, key_len);
  if (x.data_len != -1) {
    return;
  }
  struct wildcard_entry *entry = FUNC6 (sizeof (struct wildcard_entry));
  FUNC3 (entry);
  entry->key_len = key_len;
  entry->key = FUNC6 (key_len);
  FUNC1 (entry->key, key, key_len);
  entry->data_len = data_len;
  entry->data = FUNC6 (data_len);
  entry->flags = 1;
  FUNC1 (entry->data, data, data_len);
  wildcard_cache_tree = FUNC2 (wildcard_cache_tree, (hash_entry_t *)entry, FUNC0 ());
  wildcard_cache_memory += data_len + key_len + sizeof (struct wildcard_entry);
  wildcard_cache_entries ++;
}