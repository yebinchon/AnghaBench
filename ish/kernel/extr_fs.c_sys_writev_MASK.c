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
struct iovec_ {unsigned int len; int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int _EFAULT ; 
 int _ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct iovec_*) ; 
 struct iovec_* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct iovec_*,int) ; 

dword_t FUNC4(fd_t fd_no, addr_t iovec_addr, dword_t iovec_count) {
    dword_t iovec_size = sizeof(struct iovec_) * iovec_count;
    struct iovec_ *iovecs = FUNC1(iovec_size);
    if (iovecs == NULL)
        return _ENOMEM;
    int res = 0;
    if (FUNC3(iovec_addr, iovecs, iovec_size)) {
        res = _EFAULT;
        goto err;
    }
    dword_t count = 0;
    for (unsigned i = 0; i < iovec_count; i++) {
        res = FUNC2(fd_no, iovecs[i].base, iovecs[i].len);
        if (res < 0)
            goto err;
        count += res;
        if ((unsigned) res < iovecs[i].len)
            break;
    }
    FUNC0(iovecs);
    return count;

err:
    FUNC0(iovecs);
    return res;
}