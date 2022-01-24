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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct mm {int refcount; TYPE_1__ mem; int /*<<< orphan*/  exefile; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mm* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct mm *FUNC6(struct mm *mm) {
    struct mm *new_mm = FUNC1(sizeof(struct mm));
    if (new_mm == NULL)
        return NULL;
    *new_mm = *mm;
    new_mm->refcount = 1;
    FUNC2(&new_mm->mem);
    FUNC0(new_mm->exefile);
    FUNC4(&mm->mem.lock);
    FUNC3(&mm->mem, &new_mm->mem, 0, MEM_PAGES);
    FUNC5(&mm->mem.lock);
    return new_mm;
}