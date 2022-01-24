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
struct poll_fd {int types; union poll_fd_info info; } ;
struct poll {int /*<<< orphan*/  lock; } ;
struct fd {int /*<<< orphan*/  poll_lock; } ;

/* Variables and functions */
 int _ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct poll_fd* FUNC1 (struct poll*,struct fd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct poll *poll, struct fd *fd, int types, union poll_fd_info info) {
    int err;
    FUNC0(&fd->poll_lock);
    FUNC0(&poll->lock);
    struct poll_fd *poll_fd = FUNC1(poll, fd);
    if (poll_fd == NULL) {
        err = _ENOENT;
        goto out;
    }

    poll_fd->types = types;
    poll_fd->info = info;

    err = 0;
out:
    FUNC2(&poll->lock);
    FUNC2(&fd->poll_lock);
    return err;
}