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
struct fd {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  off_t_ ;
typedef  scalar_t__ int_t ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  scalar_t__ dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {scalar_t__ (* lseek ) (struct fd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* read ) (struct fd*,char*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LSEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ _EBADF ; 
 scalar_t__ _EFAULT ; 
 scalar_t__ _ENOMEM ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct fd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct fd*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

dword_t FUNC9(fd_t f, addr_t buf_addr, dword_t size, off_t_ off) {
    FUNC0("pread(%d, 0x%x, %d, %d)", f, buf_addr, size, off);
    struct fd *fd = FUNC1(f);
    if (fd == NULL)
        return _EBADF;
    char *buf = FUNC4(size+1);
    if (buf == NULL)
        return _ENOMEM;
    FUNC3(&fd->lock);
    int_t res = fd->ops->lseek(fd, off, LSEEK_SET);
    if (res < 0)
        goto out;
    res = fd->ops->read(fd, buf, size);
    if (res >= 0) {
        if (FUNC8(buf_addr, buf, res))
            res = _EFAULT;
    }
out:
    FUNC7(&fd->lock);
    FUNC2(buf);
    return res;
}