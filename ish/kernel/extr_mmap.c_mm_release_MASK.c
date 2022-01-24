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
struct mm {scalar_t__ refcount; int /*<<< orphan*/  mem; int /*<<< orphan*/ * exefile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mm *mm) {
    if (--mm->refcount == 0) {
        if (mm->exefile != NULL)
            FUNC0(mm->exefile);
        FUNC2(&mm->mem);
        FUNC1(mm);
    }
}