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
struct task {TYPE_1__* files; } ;
struct proc_entry {int /*<<< orphan*/  fd; } ;
struct fd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int _ESRCH ; 
 struct fd* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fd*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct task* FUNC3 (struct proc_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct task*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct proc_entry *entry, char *buf) {
    struct task *task = FUNC3(entry);
    if (task == NULL)
        return _ESRCH;
    FUNC2(&task->files->lock);
    struct fd *fd = FUNC0(task->files, entry->fd);
    int err = FUNC1(fd, buf);
    FUNC5(&task->files->lock);
    FUNC4(task);
    return err;
}