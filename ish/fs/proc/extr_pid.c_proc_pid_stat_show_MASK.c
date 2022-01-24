#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  long uint32_t ;
struct tty {int /*<<< orphan*/  fg_group; int /*<<< orphan*/  num; TYPE_2__* driver; } ;
struct task {int /*<<< orphan*/  general_lock; TYPE_6__* group; TYPE_5__* sighand; int /*<<< orphan*/  exit_signal; scalar_t__ blocked; scalar_t__ pending; TYPE_3__* mm; TYPE_1__* parent; scalar_t__ zombie; int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; } ;
struct proc_entry {int dummy; } ;
struct proc_data {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  threads; struct tty* tty; int /*<<< orphan*/  sid; int /*<<< orphan*/  pgid; scalar_t__ stopped; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; TYPE_4__* action; } ;
struct TYPE_10__ {scalar_t__ handler; } ;
struct TYPE_9__ {int /*<<< orphan*/  stack_start; } ;
struct TYPE_8__ {int /*<<< orphan*/  major; } ;
struct TYPE_7__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 scalar_t__ SIG_DFL_ ; 
 scalar_t__ SIG_IGN_ ; 
 int _ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct task* FUNC3 (struct proc_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct task*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct proc_entry *entry, struct proc_data *buf) {
    struct task *task = FUNC3(entry);
    if (task == NULL)
        return _ESRCH;
    FUNC2(&task->general_lock);
    FUNC2(&task->group->lock);
    FUNC2(&task->sighand->lock);

    FUNC4(buf, "%d ", task->pid);
    FUNC4(buf, "(%.16s) ", task->comm);
    FUNC4(buf, "%c ",
            task->zombie ? 'Z' :
            task->group->stopped ? 'T' :
            'R'); // I have no visibility into sleep state at the moment
    FUNC4(buf, "%d ", task->parent ? task->parent->pid : 0);
    FUNC4(buf, "%d ", task->group->pgid);
    FUNC4(buf, "%d ", task->group->sid);
    struct tty *tty = task->group->tty;
    FUNC4(buf, "%d ", tty ? FUNC0(tty->driver->major, tty->num) : 0);
    FUNC4(buf, "%d ", tty ? tty->fg_group : 0);
    FUNC4(buf, "%u ", 0); // flags

    // page faults (no data available)
    FUNC4(buf, "%lu ", 0l); // minor faults
    FUNC4(buf, "%lu ", 0l); // children minor faults
    FUNC4(buf, "%lu ", 0l); // major faults
    FUNC4(buf, "%lu ", 0l); // children major faults

    // values that would be returned from getrusage
    // finding these for a given process isn't too easy
    FUNC4(buf, "%lu ", 0l); // user time
    FUNC4(buf, "%lu ", 0l); // system time
    FUNC4(buf, "%ld ", 0l); // children user time
    FUNC4(buf, "%ld ", 0l); // children system time

    FUNC4(buf, "%ld ", 20l); // priority (not adjustable)
    FUNC4(buf, "%ld ", 0l); // nice (also not adjustable)
    FUNC4(buf, "%ld ", FUNC1(&task->group->threads));
    FUNC4(buf, "%ld ", 0l); // itimer value (deprecated, always 0)
    FUNC4(buf, "%lld ", 0ll); // jiffies on process start

    FUNC4(buf, "%lu ", 0l); // vsize
    FUNC4(buf, "%ld ", 0l); // rss
    FUNC4(buf, "%lu ", 0l); // rss limit

    // bunch of shit that can only be accessed by a debugger
    FUNC4(buf, "%lu ", 0l); // startcode
    FUNC4(buf, "%lu ", 0l); // endcode
    FUNC4(buf, "%lu ", task->mm->stack_start);
    FUNC4(buf, "%lu ", 0l); // kstkesp
    FUNC4(buf, "%lu ", 0l); // kstkeip

    FUNC4(buf, "%lu ", (unsigned long) task->pending & 0xffffffff);
    FUNC4(buf, "%lu ", (unsigned long) task->blocked & 0xffffffff);
    uint32_t ignored = 0;
    uint32_t caught = 0;
    for (int i = 0; i < 32; i++) {
        if (task->sighand->action[i].handler == SIG_IGN_)
            ignored |= 1l << i;
        else if (task->sighand->action[i].handler != SIG_DFL_)
            caught |= 1l << i;
    }
    FUNC4(buf, "%lu ", (unsigned long) ignored);
    FUNC4(buf, "%lu ", (unsigned long) caught);

    FUNC4(buf, "%lu ", 0l); // wchan (wtf)
    FUNC4(buf, "%lu ", 0l); // nswap
    FUNC4(buf, "%lu ", 0l); // cnswap
    FUNC4(buf, "%d", task->exit_signal);
    // that's enough for now
    FUNC4(buf, "\n");

    FUNC6(&task->sighand->lock);
    FUNC6(&task->group->lock);
    FUNC6(&task->general_lock);
    FUNC5(task);
    return 0;
}