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
struct TYPE_3__ {int size; int hash; int /*<<< orphan*/  to; int /*<<< orphan*/  rev; } ;
typedef  TYPE_1__ lookup_table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

inline void FUNC5 (lookup_table *table) {
  int need = FUNC4 (table->rev, table->size);
  if (need != table->hash) {
    FUNC2 (stderr, "Wrong hashtable: size = %d, h = %d.", table->size, table->rev);
    FUNC1 (stderr);
  }
  FUNC0 (need == table->hash);

  FUNC3 (&table->to);
}