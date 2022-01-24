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
struct inode_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  posix_unlock; } ;
struct flock_ {scalar_t__ type; } ;
struct file_lock {int dummy; } ;
struct fd {struct inode_data* inode; } ;

/* Variables and functions */
 scalar_t__ F_RDLCK_ ; 
 scalar_t__ F_UNLCK_ ; 
 scalar_t__ F_WRLCK_ ; 
 int O_RDONLY_ ; 
 int O_RDWR_ ; 
 int O_WRONLY_ ; 
 int _EAGAIN ; 
 int _EBADF ; 
 int _EINVAL ; 
 int FUNC0 (struct fd*) ; 
 int FUNC1 (struct inode_data*,struct file_lock*) ; 
 int FUNC2 (struct fd*,struct flock_*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(struct fd *fd, struct flock_ *flock, bool blocking) {
    if (flock->type != F_RDLCK_ && flock->type != F_WRLCK_ && flock->type != F_UNLCK_)
        return _EINVAL;
    if (flock->type == F_RDLCK_ && !(FUNC0(fd) & (O_RDONLY_|O_RDWR_)))
        return _EBADF;
    if (flock->type == F_WRLCK_ && !(FUNC0(fd) & (O_WRONLY_|O_RDWR_)))
        return _EBADF;

    struct inode_data *inode = fd->inode;
    FUNC3(&inode->lock);

    struct file_lock request;
    int err = FUNC2(fd, flock, &request);
    if (err < 0)
        goto out;
    while ((err = FUNC1(inode, &request)) == _EAGAIN) {
        if (!blocking)
            break;
        err = FUNC5(&inode->posix_unlock, &inode->lock, NULL);
        if (err < 0)
            break;
    }
out:
    FUNC4(&inode->lock);
    return err;
}