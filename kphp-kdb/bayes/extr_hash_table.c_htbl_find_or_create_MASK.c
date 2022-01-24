#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; TYPE_2__** h; } ;
typedef  TYPE_1__ hash_table ;
struct TYPE_7__ {int key; int data; struct TYPE_7__* next_entry; } ;
typedef  TYPE_2__ hash_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 () ; 

int *FUNC2 (hash_table *table, int key) {
  FUNC0 (table);

  int i = (int)key % table->size;
  if (i<0) {
    i += table->size;
  }

  hash_entry *curr = table->h[i];
  while (curr != NULL) {
    if (curr->key == key) {
      return &(curr->data);
    }
    curr = curr->next_entry;
  }

  curr = FUNC1();
  curr->key = key;
  curr->data = 0;
  curr->next_entry = table->h[i];
  table->h[i] = curr;

  return &(curr->data);
}