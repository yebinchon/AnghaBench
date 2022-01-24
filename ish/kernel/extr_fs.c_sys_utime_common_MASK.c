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
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct fd {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 int AT_SYMLINK_NOFOLLOW_ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int _EBADF ; 
 int _EFAULT ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fd*,char*,struct timespec,struct timespec,int) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,int) ; 

__attribute__((used)) static dword_t FUNC4(fd_t at_f, addr_t path_addr, struct timespec atime, struct timespec mtime, dword_t flags) {
    char path[MAX_PATH];
    if (path_addr != 0)
        if (FUNC3(path_addr, path, sizeof(path)))
            return _EFAULT;
    FUNC0("utimensat(%d, %s, {{%d, %d}, {%d, %d}}, %d)", at_f, path,
            atime.tv_sec, atime.tv_nsec, mtime.tv_sec, mtime.tv_nsec, flags);
    struct fd *at = FUNC1(at_f);
    if (at == NULL)
        return _EBADF;

    bool follow_links = flags & AT_SYMLINK_NOFOLLOW_ ? false : true;
    return FUNC2(at, path_addr != 0 ? path : ".", atime, mtime, follow_links); // TODO implement
}