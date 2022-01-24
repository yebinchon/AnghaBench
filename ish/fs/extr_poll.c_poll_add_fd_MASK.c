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
typedef  union poll_fd_info {int dummy; } poll_fd_info ;
struct poll_fd {int types; int /*<<< orphan*/  fds; int /*<<< orphan*/  polls; union poll_fd_info info; struct poll* poll; struct fd* fd; } ;
struct poll {int /*<<< orphan*/  lock; int /*<<< orphan*/  poll_fds; } ;
struct fd {int /*<<< orphan*/  poll_lock; int /*<<< orphan*/  poll_fds; } ;

/* Variables and functions */
 int _ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct poll_fd* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct poll *poll, struct fd *fd, int types, union poll_fd_info info) {
    int err;
    FUNC1(&fd->poll_lock);
    FUNC1(&poll->lock);

    struct poll_fd *poll_fd = FUNC2(sizeof(struct poll_fd));
    if (poll_fd == NULL) {
        err = _ENOMEM;
        goto out;
    }
    poll_fd->fd = fd;
    poll_fd->poll = poll;
    poll_fd->types = types;
    poll_fd->info = info;

    FUNC0(&fd->poll_fds, &poll_fd->polls);
    FUNC0(&poll->poll_fds, &poll_fd->fds);

    err = 0;
out:
    FUNC3(&poll->lock);
    FUNC3(&fd->poll_lock);
    return err;
}