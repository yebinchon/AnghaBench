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
struct TYPE_3__ {int n; int /*<<< orphan*/ * e; scalar_t__ size; } ;
typedef  TYPE_1__ qhash_table ;
typedef  int /*<<< orphan*/  entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void FUNC1 (qhash_table *ht) {
  if (ht->e != NULL) {
    FUNC0 (ht->e, ht->n * sizeof (entry_t));
    ht->n = 0;
    ht->size = 0;
    ht->e = NULL;
  }
}