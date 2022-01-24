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
typedef  int /*<<< orphan*/  uint8_t ;
struct task {TYPE_1__* mm; } ;
struct proc_entry {int dummy; } ;
struct proc_data {int dummy; } ;
struct TYPE_2__ {size_t argv_end; size_t argv_start; } ;

/* Variables and functions */
 int _ENOMEM ; 
 int _ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_data*,int /*<<< orphan*/ *,size_t) ; 
 struct task* FUNC3 (struct proc_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct task*) ; 
 int FUNC5 (struct task*,size_t,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC6(struct proc_entry *entry, struct proc_data *buf) {
    struct task *task = FUNC3(entry);
    if (task == NULL)
        return _ESRCH;
    size_t size = task->mm->argv_end - task->mm->argv_start;
    uint8_t *data = FUNC1(size);
    if (data == NULL)
        return _ENOMEM;
    int fail = FUNC5(task, task->mm->argv_start, data, size);
    FUNC2(buf, data, size);
    FUNC0(data);
    FUNC4(task);
    if (fail)
        return 0;
    return size;
}