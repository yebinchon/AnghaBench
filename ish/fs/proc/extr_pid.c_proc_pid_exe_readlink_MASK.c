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
struct task {TYPE_1__* mm; } ;
struct proc_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  exefile; } ;

/* Variables and functions */
 int _ESRCH ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct task* FUNC1 (struct proc_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct task*) ; 

__attribute__((used)) static int FUNC3(struct proc_entry *entry, char *buf) {
    struct task *task = FUNC1(entry);
    if (task == NULL)
        return _ESRCH;
    int err = FUNC0(task->mm->exefile, buf);
    FUNC2(task);
    return err;
}