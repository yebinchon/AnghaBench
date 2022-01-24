#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task {int /*<<< orphan*/  pid; int /*<<< orphan*/  siblings; } ;
struct TYPE_2__ {int /*<<< orphan*/ * task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct task *task) {
    FUNC1(&task->siblings);
    FUNC2(task->pid)->task = NULL;
    FUNC0(task);
}