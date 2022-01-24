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
struct TYPE_2__ {int /*<<< orphan*/  poll; } ;
struct fd {TYPE_1__ epollfd; } ;
typedef  int int_t ;
typedef  int /*<<< orphan*/  fd_t ;

/* Variables and functions */
 int O_CLOEXEC_ ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  _EINVAL ; 
 int /*<<< orphan*/  _ENOMEM ; 
 struct fd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  epoll_ops ; 
 int /*<<< orphan*/  FUNC2 (struct fd*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

fd_t FUNC4(int_t flags) {
    FUNC0("epoll_create(%#x)", flags);
    if (flags & ~(O_CLOEXEC_))
        return _EINVAL;

    struct fd *fd = FUNC1(&epoll_ops);
    if (fd == NULL)
        return _ENOMEM;
    fd->epollfd.poll = FUNC3();
    return FUNC2(fd, flags);
}