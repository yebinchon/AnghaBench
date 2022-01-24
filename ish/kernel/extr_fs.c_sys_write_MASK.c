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
struct fd {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {int (* write ) (struct fd*,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int _EBADF ; 
 int _EFAULT ; 
 int _ENOMEM ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (struct fd*,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC6(fd_t fd_no, addr_t buf_addr, dword_t size) {
    // FIXME this is a DOS vector
    char *buf = FUNC3(size + 1);
    if (buf == NULL)
        return _ENOMEM;
    dword_t res = 0;
    if (FUNC5(buf_addr, buf, size)) {
        res = _EFAULT;
        goto out;
    }
    buf[size] = '\0';
    FUNC0("write(%d, \"%.100s\", %d)", fd_no, buf, size);
    struct fd *fd = FUNC1(fd_no);
    if (fd == NULL || fd->ops->write == NULL) {
        res = _EBADF;
        goto out;
    }
    res = fd->ops->write(fd, buf, size);
out:
    FUNC2(buf);
    return res;
}