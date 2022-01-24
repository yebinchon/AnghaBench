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
struct fd {TYPE_1__* ops; int /*<<< orphan*/  type; } ;
typedef  size_t int_t ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  size_t dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {size_t (* read ) (struct fd*,char*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t _EBADF ; 
 size_t _EFAULT ; 
 size_t _EISDIR ; 
 size_t _ENOMEM ; 
 struct fd* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct fd*,char*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 

dword_t FUNC7(fd_t fd_no, addr_t buf_addr, dword_t size) {
    FUNC0("read(%d, 0x%x, %d)", fd_no, buf_addr, size);
    char *buf = (char *) FUNC4(size+1);
    if (buf == NULL)
        return _ENOMEM;
    int_t res = 0;
    struct fd *fd = FUNC2(fd_no);
    if (fd == NULL || fd->ops->read == NULL) {
        res = _EBADF;
        goto out;
    }
    if (FUNC1(fd->type)) {
        res = _EISDIR;
        goto out;
    }
    res = fd->ops->read(fd, buf, size);
    if (res >= 0) {
        buf[res] = '\0';
        FUNC0(" \"%.99s\"", buf);
        if (FUNC6(buf_addr, buf, res))
            res = _EFAULT;
    }
out:
    FUNC3(buf);
    return res;
}