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
struct poll_fd {int /*<<< orphan*/  fds; int /*<<< orphan*/  polls; } ;
struct poll {int /*<<< orphan*/  lock; } ;
struct fd {int /*<<< orphan*/  poll_lock; } ;

/* Variables and functions */
 int _ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct poll_fd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct poll_fd* FUNC3 (struct poll*,struct fd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct poll *poll, struct fd *fd) {
    int err;
    FUNC2(&fd->poll_lock);
    FUNC2(&poll->lock);
    struct poll_fd *poll_fd = FUNC3(poll, fd);
    if (poll_fd == NULL) {
        err = _ENOENT;
        goto out;
    }

    FUNC1(&poll_fd->polls);
    FUNC1(&poll_fd->fds);
    FUNC0(poll_fd);

    err = 0;
out:
    FUNC4(&poll->lock);
    FUNC4(&fd->poll_lock);
    return err;
}