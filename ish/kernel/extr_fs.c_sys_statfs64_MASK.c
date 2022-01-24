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
struct statfs64_ {int dummy; } ;
struct mount {int dummy; } ;
typedef  int /*<<< orphan*/  path_raw ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_PWD ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  N_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int /*<<< orphan*/ ) ; 
 int _EFAULT ; 
 int _EINVAL ; 
 struct mount* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC6(addr_t path_addr, dword_t buf_size, addr_t buf_addr) {
    char path_raw[MAX_PATH];
    if (FUNC5(path_addr, path_raw, sizeof(path_raw)))
        return _EFAULT;
    FUNC0("statfs64(\"%s\", %d, %#x)", path_raw, buf_size, buf_addr);
    if (buf_size != sizeof(struct statfs64_))
        return _EINVAL;
    char path[MAX_PATH];
    int err = FUNC3(AT_PWD, path_raw, path, N_SYMLINK_NOFOLLOW);
    if (err < 0)
        return err;
    struct mount *mount = FUNC1(path);
    err = FUNC4(mount, buf_addr);
    FUNC2(mount);
    return err;
}