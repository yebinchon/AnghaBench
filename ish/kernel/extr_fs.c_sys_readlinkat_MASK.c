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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char*,...) ; 
 int _EBADF ; 
 int _EFAULT ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fd*,char*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

dword_t FUNC5(fd_t at_f, addr_t path_addr, addr_t buf_addr, dword_t bufsize) {
    char path[MAX_PATH];
    if (FUNC3(path_addr, path, sizeof(path)))
        return _EFAULT;
    FUNC0("readlinkat(%d, \"%s\", %#x, %#x)", at_f, path, buf_addr, bufsize);
    struct fd *at = FUNC1(at_f);
    if (at == NULL)
        return _EBADF;
    char buf[bufsize];
    ssize_t size = FUNC2(at, path, buf, bufsize);
    if (size >= 0) {
        FUNC0(" \"%.*s\"", size, buf);
        if (FUNC4(buf_addr, buf, size))
            return _EFAULT;
    }
    return size;
}