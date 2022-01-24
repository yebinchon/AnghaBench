#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ht_t ;
typedef  TYPE_1__* ht_entry_t ;
struct TYPE_5__ {void* key; void* value; struct TYPE_5__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *,TYPE_1__***,TYPE_1__**,TYPE_1__**) ; 

void *FUNC1(ht_t self, const void *key, int want_key) {
  ht_entry_t *head;
  ht_entry_t prev;
  ht_entry_t curr;
  FUNC0(self, key, NULL, &head, &prev, &curr);
  if (!curr) {
    return NULL;
  }
  if (prev) {
    // optional move-to-front
    prev->next = curr->next;
    curr->next = *head;
    *head = curr;
  }
  return (want_key ? curr->key : curr->value);
}