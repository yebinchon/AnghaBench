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
struct task {TYPE_1__* group; struct sighand* sighand; scalar_t__ zombie; } ;
struct siginfo_ {int dummy; } ;
struct sighand {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int stopped; int /*<<< orphan*/  lock; int /*<<< orphan*/  stopped_cond; } ;

/* Variables and functions */
 int SIGCONT_ ; 
 int SIGKILL_ ; 
 scalar_t__ SIGNAL_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (struct task*,int,struct siginfo_) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sighand*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct task *task, int sig, struct siginfo_ info) {
    // signal zero is for testing whether a process exists
    if (sig == 0)
        return;
    if (task->zombie)
        return;

    struct sighand *sighand = task->sighand;
    FUNC1(&sighand->lock);
    if (FUNC3(sighand, sig) != SIGNAL_IGNORE) {
        FUNC0(task, sig, info);
    }
    FUNC4(&sighand->lock);

    if (sig == SIGCONT_ || sig == SIGKILL_) {
        FUNC1(&task->group->lock);
        task->group->stopped = false;
        FUNC2(&task->group->stopped_cond);
        FUNC4(&task->group->lock);
    }
}