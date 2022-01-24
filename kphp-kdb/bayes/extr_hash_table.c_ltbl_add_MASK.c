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
struct TYPE_5__ {int size; int currId; int* rev; int /*<<< orphan*/  to; int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ lookup_table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int* FUNC6 (int*,int,int) ; 

int FUNC7 (lookup_table *table, int key) {
  FUNC2 (table);

  FUNC0 (table->size > 0);

  int x;
  if ( (x = FUNC3 (table, key)) ) {
    return x;
  }

  if (table->currId >= table->size) {
    FUNC0 (table->currId == table->size);

    int len = table->size;

    table->size = table->currId * 2;
    table->rev = FUNC6 (table->rev, sizeof (int) * table->size, sizeof (int) * len);
    FUNC0 (table->rev != NULL);
    FUNC0 (0 < table->size && table->size < 100000000);
    table->hash = FUNC5 (table->rev, table->size);
    FUNC4 (*(table->rev + len), 0, sizeof (int) * (table->size - len));
  }
  FUNC0 (table->currId < table->size);

  FUNC0 (table->currId < table->size);

  table->rev[table->currId] = key;
  //htbl_add (&(table->to), key, table->currId);
  *(FUNC1 (&(table->to), key)) = table->currId;

  return table->currId++;
}