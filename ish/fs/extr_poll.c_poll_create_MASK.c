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
struct poll {int* notify_pipe; int /*<<< orphan*/  lock; int /*<<< orphan*/  poll_fds; scalar_t__ waiters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct poll* FUNC2 (int) ; 

struct poll *FUNC3() {
    struct poll *poll = FUNC2(sizeof(struct poll));
    if (poll == NULL)
        return NULL;
    poll->waiters = 0;
    poll->notify_pipe[0] = -1;
    poll->notify_pipe[1] = -1;
    FUNC0(&poll->poll_fds);
    FUNC1(&poll->lock);
    return poll;
}