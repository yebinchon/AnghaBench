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
struct index_entry {int data_len; } ;

/* Variables and functions */
 int FUNC0 (char const*,int,int,int) ; 
 struct index_entry* FUNC1 (char const*,int) ; 
 struct index_entry* FUNC2 (char const*,int) ; 
 struct index_entry* iterator_index_entry ; 
 char const* iterator_key ; 
 int iterator_prefix_len ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4 (const char *key, int key_len, int prefix_len, int strict) {
  struct index_entry *index_entry = 0;
  iterator_key = key;
  iterator_prefix_len = prefix_len;
  if (!strict) {
    index_entry = FUNC1 (key, key_len);
    if (!index_entry) {
      return -2;
    }
    if (index_entry->data_len == -1) {
      index_entry = 0;
    }
  }
  if (!index_entry) {
    index_entry = FUNC2 (key, key_len);
    if (!index_entry) {
      return -2;
    }
  }
  iterator_index_entry = index_entry;
  if (FUNC0 (key, key_len, prefix_len, strict) != -2) {
    return FUNC3 (0);
  }
  return 0;
}