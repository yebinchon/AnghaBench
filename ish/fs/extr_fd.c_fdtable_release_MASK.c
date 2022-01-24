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
struct fdtable {scalar_t__ refcount; unsigned int size; int /*<<< orphan*/  lock; struct fdtable* cloexec; struct fdtable* files; } ;
typedef  scalar_t__ fd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fdtable*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fdtable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fdtable *table) {
    FUNC2(&table->lock);
    if (--table->refcount == 0) {
        for (fd_t f = 0; (unsigned) f < table->size; f++)
            FUNC0(table, f);
        FUNC1(table->files);
        FUNC1(table->cloexec);
        FUNC3(&table->lock);
        FUNC1(table);
    } else {
        FUNC3(&table->lock);
    }
}