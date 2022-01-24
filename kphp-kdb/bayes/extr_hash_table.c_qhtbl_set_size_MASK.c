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
struct TYPE_6__ {int size; int n; TYPE_2__* e; } ;
typedef  TYPE_1__ qhash_table ;
typedef  scalar_t__ ll ;
struct TYPE_7__ {scalar_t__ h; int /*<<< orphan*/  val; } ;
typedef  TYPE_2__ entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC2 (int) ; 

void FUNC3 (qhash_table *ht, int size) {
  FUNC0 (size > ht->size);
  if (size == ht->n) {
    return;
  }

  entry_t *e = FUNC2 (size * sizeof (entry_t));
  FUNC0 (e != NULL);

  int i;
  for (i = 0; i < ht->n; i++) {
    if (ht->e[i].h) {
      ll h = ht->e[i].h;
      int j = (unsigned int)h % size;

      while (e[j].h != h && e[j].h) {
        if (++j == size) {
          j = 0;
        }
      }

      e[j].h = h;
      e[j].val = ht->e[i].val;
    }
  }

  FUNC1 (ht->e, ht->n * sizeof (entry_t));
  ht->n = size;
  ht->e = e;
}