#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int currId; int size; long long* rev; int /*<<< orphan*/  to; } ;
typedef  TYPE_1__ lookup_table ;

/* Variables and functions */
 long long* FUNC0 (long long*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long long) ; 
 int FUNC2 (TYPE_1__*,long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4 (lookup_table *table, long long key) {
  int x;

  if ( (x = FUNC2 (table, key)) ) {
    return x;
  }

  if (table->currId >= table->size) {
    int len = table->size;

    table->size = table->currId * 2;
//    fprintf (stderr, "%d %d %d\n", sizeof (long long) * table->size, len, table->size - len);
    table->rev = FUNC0 (table->rev, sizeof (long long) * table->size, sizeof (long long) * len);
//    fprintf (stderr, "realloc done\n");
    FUNC3 (table->rev + len, 0, sizeof (long long) * (table->size - len));
  }

  table->rev[table->currId] = key;
  //htbl_add (&(table->to), key, table->currId);
  *(long *)(FUNC1 (&(table->to), key)) = table->currId;

  return table->currId++;
}