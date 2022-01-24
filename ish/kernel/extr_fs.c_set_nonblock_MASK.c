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
struct fd {int dummy; } ;
typedef  scalar_t__ dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int O_NONBLOCK_ ; 
 int _EFAULT ; 
 int FUNC0 (struct fd*) ; 
 int FUNC1 (struct fd*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct fd *fd, addr_t nb_addr) {
    dword_t nonblock;
    if (FUNC2(nb_addr, nonblock))
        return _EFAULT;
    int flags = FUNC0(fd);
    if (nonblock)
        flags |= O_NONBLOCK_;
    else
        flags &= ~O_NONBLOCK_;
    return FUNC1(fd, flags);
}