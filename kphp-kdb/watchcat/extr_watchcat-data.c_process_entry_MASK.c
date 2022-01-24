#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int n; TYPE_1__* by_hash; } ;
typedef  TYPE_2__ watchcat_entry_t ;
struct TYPE_10__ {int /*<<< orphan*/  query; struct TYPE_10__* next; } ;
typedef  TYPE_3__ watchcat ;
struct TYPE_8__ {scalar_t__ word; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC4 (watchcat_entry_t *entry) {
  int i;
  for (i = 0; i < entry->n; i++) {
    if (i == 0 || entry->by_hash[i].word != entry->by_hash[i - 1].word) {
      watchcat *st = FUNC3 (entry->by_hash[i].word, 0), *q;
      if (st != NULL) {
        q = st;
        FUNC1 (q->next != st);
        while (q->next != st) {
          q = q->next;

          if (FUNC2 (entry, q->query)) {
            FUNC0 (q);
          }
        }
      }
    }
  }
}