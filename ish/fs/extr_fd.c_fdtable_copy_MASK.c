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
struct fdtable {int size; int /*<<< orphan*/  lock; TYPE_1__** cloexec; TYPE_1__** files; } ;
struct fd {int dummy; } ;
typedef  int fd_t ;
struct TYPE_3__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct fdtable*) ; 
 struct fdtable* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct fdtable *FUNC6(struct fdtable *table) {
    FUNC3(&table->lock);
    int size = table->size;
    struct fdtable *new_table = FUNC2(size);
    if (FUNC1(new_table)) {
        FUNC5(&table->lock);
        return new_table;
    }
    FUNC4(new_table->files, table->files, sizeof(struct fd *) * size);
    for (fd_t f = 0; f < size; f++)
        if (new_table->files[f])
            new_table->files[f]->refcount++;
    FUNC4(new_table->cloexec, table->cloexec, FUNC0(size));
    FUNC5(&table->lock);
    return new_table;
}