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
typedef  void* uid_t_ ;
struct fd {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  mode_t_ ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {void* egid; void* euid; void* gid; void* uid; } ;

/* Variables and functions */
 int AT_EACCESS_ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int _EBADF ; 
 int _EFAULT ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int FUNC2 (struct fd*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC4(fd_t at_f, addr_t path_addr, mode_t_ mode, dword_t flags) {
    char path[MAX_PATH];
    if (FUNC3(path_addr, path, sizeof(path)))
        return _EFAULT;
    struct fd *at = FUNC1(at_f);
    if (at == NULL)
        return _EBADF;
    FUNC0("faccessat(%d, \"%s\", 0x%x, %d)", at_f, path, mode, flags);

    if (flags & AT_EACCESS_)
        return FUNC2(at, path, mode);

    uid_t_ uid_tmp = current->euid;
    uid_t_ gid_tmp = current->egid;
    current->euid = current->uid;
    current->egid = current->gid;
    int err = FUNC2(at, path, mode);
    current->euid = uid_tmp;
    current->egid = gid_tmp;
    return err;
}