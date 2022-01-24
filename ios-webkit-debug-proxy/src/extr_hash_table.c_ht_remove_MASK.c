#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ht_t ;
typedef  TYPE_2__* ht_entry_t ;
struct TYPE_10__ {struct TYPE_10__* next; int /*<<< orphan*/ * value; } ;
struct TYPE_9__ {int /*<<< orphan*/  num_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void const*,int /*<<< orphan*/ *,TYPE_2__***,TYPE_2__**,TYPE_2__**) ; 

void *FUNC2(ht_t self, const void *key) {
  ht_entry_t *head;
  ht_entry_t prev;
  ht_entry_t curr;
  FUNC1(self, key, NULL, &head, &prev, &curr);
  void *ret = (curr ? curr->value : NULL);
  if (curr) {
    if (prev) {
      prev->next = curr->next;
    } else {
      *head = curr->next;
    }
    FUNC0(curr);
    self->num_keys--;
  }
  return ret;
}