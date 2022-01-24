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
struct TYPE_3__ {int size; int /*<<< orphan*/ * h; int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ hash_table ;
typedef  int /*<<< orphan*/  hash_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

void FUNC3 (hash_table *table, int size) {
  FUNC0 (size > 0);
  FUNC0 (table->h == NULL);

  table->h = FUNC2 (sizeof (hash_entry *) * size);
  FUNC0 (table->h != NULL);

  table->size = size;
  table->hash = FUNC1 (table->h, table->size);
}