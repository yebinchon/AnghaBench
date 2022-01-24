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
typedef  int /*<<< orphan*/  timer_callback_t ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct fd {TYPE_1__ timerfd; } ;
typedef  scalar_t__ int_t ;
typedef  int /*<<< orphan*/  fd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ITIMER_REAL_ ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  _EINVAL ; 
 int /*<<< orphan*/  _ENOMEM ; 
 struct fd* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fd*) ; 
 scalar_t__ timerfd_callback ; 
 int /*<<< orphan*/  timerfd_ops ; 

fd_t FUNC5(int_t clockid, int_t flags) {
    FUNC1("timerfd_create(%d, %#x)", clockid, flags);
    if (clockid != ITIMER_REAL_) {
        FUNC0("timerfd %d", clockid);
        return _EINVAL;
    }

    struct fd *fd = FUNC2(&timerfd_ops);
    if (fd == NULL)
        return _ENOMEM;

    fd->timerfd.timer = FUNC4((timer_callback_t) timerfd_callback, fd);
    return FUNC3(fd, flags);
}