#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fdtable {unsigned int size; int /*<<< orphan*/  lock; int /*<<< orphan*/  cloexec; } ;
typedef  scalar_t__ fd_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fdtable*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fdtable *table) {
    FUNC2(&table->lock);
    for (fd_t f = 0; (unsigned) f < table->size; f++)
        if (FUNC0(f, table->cloexec))
            FUNC1(table, f);
    FUNC3(&table->lock);
}