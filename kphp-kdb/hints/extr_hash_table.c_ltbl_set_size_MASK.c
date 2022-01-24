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
struct TYPE_3__ {int size; int /*<<< orphan*/  rev; int /*<<< orphan*/  to; } ;
typedef  TYPE_1__ lookup_table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2 (lookup_table *table, int size) {
  FUNC1 (&(table->to), size);
  table->rev = FUNC0 (sizeof (long long) * size);
  table->size = size;
}