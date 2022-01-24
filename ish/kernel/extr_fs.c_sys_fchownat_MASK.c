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
typedef  int uid_t ;
struct fd {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int AT_SYMLINK_NOFOLLOW_ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int _EBADF ; 
 int _EFAULT ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fd*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  uid ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC5(fd_t at_f, addr_t path_addr, dword_t owner, dword_t group, int flags) {
    char path[MAX_PATH];
    if (FUNC4(path_addr, path, sizeof(path)))
        return _EFAULT;
    FUNC0("fchownat(%d, \"%s\", %d, %d, %d)", at_f, path, owner, group, flags);
    struct fd *at = FUNC1(at_f);
    if (at == NULL)
        return _EBADF;
    int err;
    bool follow_links = flags & AT_SYMLINK_NOFOLLOW_ ? false : true;
    if (owner != (uid_t) -1) {
        err = FUNC2(at, path, FUNC3(uid, owner), follow_links);
        if (err < 0)
            return err;
    }
    if (group != (uid_t) -1) {
        err = FUNC2(at, path, FUNC3(gid, group), follow_links);
        if (err < 0)
            return err;
    }
    return 0;
}