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
struct sighand {int /*<<< orphan*/  lock; struct sigaction_* action; } ;
struct sigaction_ {int dummy; } ;
struct TYPE_2__ {struct sighand* sighand; } ;

/* Variables and functions */
 int NUM_SIGS ; 
 int _EINVAL ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int sig, const struct sigaction_ *action, struct sigaction_ *oldaction) {
    if (sig >= NUM_SIGS)
        return _EINVAL;
    if (!FUNC1(sig))
        return _EINVAL;

    struct sighand *sighand = current->sighand;
    FUNC0(&sighand->lock);
    if (oldaction)
        *oldaction = sighand->action[sig];
    if (action)
        sighand->action[sig] = *action;
    FUNC2(&sighand->lock);
    return 0;
}