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
typedef  int /*<<< orphan*/  path ;
typedef  int int_t ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int AT_REMOVEDIR_ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  _EBADF ; 
 int /*<<< orphan*/  _EFAULT ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fd*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fd*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC5(fd_t at_f, addr_t path_addr, int_t flags) {
    char path[MAX_PATH];
    if (FUNC4(path_addr, path, sizeof(path)))
        return _EFAULT;
    FUNC0("unlinkat(%d, \"%s\", %d)", at_f, path, flags);
    struct fd *at = FUNC1(at_f);
    if (at == NULL)
        return _EBADF;
    if (flags & AT_REMOVEDIR_)
        return FUNC2(at, path);
    else
        return FUNC3(at, path);
}