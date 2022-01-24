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
struct fdtable {int refcount; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cloexec; int /*<<< orphan*/ * files; scalar_t__ size; } ;

/* Variables and functions */
 struct fdtable* FUNC0 (int) ; 
 int _ENOMEM ; 
 int FUNC1 (struct fdtable*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fdtable*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fdtable* FUNC4 (int) ; 

struct fdtable *FUNC5(int size) {
    struct fdtable *fdt = FUNC4(sizeof(struct fdtable));
    if (fdt == NULL)
        return FUNC0(_ENOMEM);
    fdt->refcount = 1;
    fdt->size = 0;
    fdt->files = NULL;
    fdt->cloexec = NULL;
    FUNC3(&fdt->lock);
    int err = FUNC1(fdt, size);
    if (err < 0) {
        FUNC2(fdt);
        return FUNC0(err);
    }
    return fdt;
}