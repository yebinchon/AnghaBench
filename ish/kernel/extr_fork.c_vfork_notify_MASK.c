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
struct task {TYPE_1__* vfork; } ;
struct TYPE_2__ {int done; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct task *task) {
    if (task->vfork) {
        FUNC0(&task->vfork->lock);
        task->vfork->done = true;
        FUNC1(&task->vfork->cond);
        FUNC2(&task->vfork->lock);
    }
}