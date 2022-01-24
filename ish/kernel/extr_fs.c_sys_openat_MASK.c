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
typedef  int /*<<< orphan*/  mode_t_ ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fd*) ; 
 int MAX_PATH ; 
 int O_CREAT_ ; 
 int /*<<< orphan*/  FUNC1 (struct fd*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _EBADF ; 
 int /*<<< orphan*/  _EFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fd* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fd*,int) ; 
 struct fd* FUNC6 (struct fd*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

fd_t FUNC8(fd_t at_f, addr_t path_addr, dword_t flags, mode_t_ mode) {
    char path[MAX_PATH];
    if (FUNC7(path_addr, path, sizeof(path)))
        return _EFAULT;
    FUNC2("openat(%d, \"%s\", 0x%x, 0x%x)", at_f, path, flags, mode);

    if (flags & O_CREAT_)
        FUNC3(&mode);

    struct fd *at = FUNC4(at_f);
    if (at == NULL)
        return _EBADF;
    struct fd *fd = FUNC6(at, path, flags, mode);
    if (FUNC0(fd))
        return FUNC1(fd);
    return FUNC5(fd, flags);
}