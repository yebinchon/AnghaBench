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
struct index_entry {int data_len; char* data; int key_len; } ;
struct hash_entry {int key_len; char* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct hash_entry*,struct index_entry*) ; 
 struct index_entry* FUNC2 (struct index_entry*) ; 
 struct index_entry* iterator_index_entry ; 
 int /*<<< orphan*/  iterator_key ; 
 int iterator_prefix_len ; 
 int FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct index_entry*,struct hash_entry*) ; 
 scalar_t__ FUNC6 () ; 

int FUNC7 (struct hash_entry *hash_entry) {
  FUNC5 (3, "iterator_report: index_entry %p, hash_entry %p\n", iterator_index_entry, hash_entry);
  struct index_entry *index_entry = iterator_index_entry;
  char *cur_key = 0;
  int cur_key_len = 0;
  int r = -1;
  if (hash_entry) {
    cur_key_len = hash_entry->key_len;
    cur_key = hash_entry->key;
    r = 0;
  }
  int c;
  while (1) {
    if (index_entry->data_len == -1) {
      c = -1;
    } else if (!cur_key) {
      c = 1;
    } else {
      c = FUNC3 (cur_key, cur_key_len, index_entry->data, index_entry->key_len);
    }
    if (c <= 0) {
      break;
    }
    if (!hash_entry) {
      int x = FUNC4 (iterator_key, iterator_prefix_len, index_entry->data, index_entry->key_len, 0);
      FUNC0 (x <= 0);
      if (x && x >= -iterator_prefix_len) {
        return 0;
      }
    }
    //fprintf (stderr, ".");
    FUNC1 (index_entry->data, index_entry->key_len, (c <= 0) ? hash_entry : 0, (c >= 0) ? index_entry : 0);
    if (FUNC6 () < 0) {
      return -1;
    }

    index_entry = FUNC2 (index_entry);
    if (!index_entry) {
      return -2;
    }
  }
  if (!hash_entry) {
    return 0;
  }
  FUNC1 (hash_entry->key, hash_entry->key_len, (c <= 0) ? hash_entry : 0, (c >= 0) ? index_entry : 0);
  //fprintf (stderr, "-");
  if (FUNC6 () < 0) { return -1;};
  if (c == 0) {
    index_entry = FUNC2 (index_entry);
    if (!index_entry) {
      return -2;
    }
  }
  iterator_index_entry = index_entry;
  return 0;
}