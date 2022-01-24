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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ val; } ;
struct fd {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; TYPE_1__ eventfd; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int O_NONBLOCK_ ; 
 scalar_t__ UINT64_MAX ; 
 int _EAGAIN ; 
 int _EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct fd *fd, const void *buf, size_t bufsize) {
    if (bufsize < sizeof(uint64_t))
        return _EINVAL;
    uint64_t increment = *(uint64_t *) buf;
    if (increment == UINT64_MAX)
        return _EINVAL;

    FUNC0(&fd->lock);
    while (fd->eventfd.val >= UINT64_MAX - increment) {
        if (fd->flags & O_NONBLOCK_) {
            FUNC3(&fd->lock);
            return _EAGAIN;
        }
        FUNC4(&fd->cond, &fd->lock, NULL);
    }

    fd->eventfd.val += increment;
    FUNC1(&fd->cond);
    FUNC3(&fd->lock);
    FUNC2(fd);
    return sizeof(uint64_t);
}