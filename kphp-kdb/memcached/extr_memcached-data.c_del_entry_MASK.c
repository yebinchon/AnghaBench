#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int next_entry; int /*<<< orphan*/  key_hash; scalar_t__ data_len; int /*<<< orphan*/  data; scalar_t__ key_len; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ hash_entry_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* buffer_stack ; 
 int /*<<< orphan*/  buffer_stack_size ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* entry_buffer ; 
 int* hash_st ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5 (int x) {
  hash_entry_t *entry = &entry_buffer[x];

  FUNC3 (x);
  FUNC2 (x);

  FUNC4 (entry->key, entry->key_len + 1);
  FUNC4 (entry->data, entry->data_len + 1);

  int *i = &hash_st[FUNC0 (entry->key_hash)];

  while (*i != x && *i != -1) {
    i = &(entry_buffer[*i].next_entry);
  }

  FUNC1 (*i == x);

  *i = entry->next_entry;

  buffer_stack[buffer_stack_size++] = x;
}