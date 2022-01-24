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
typedef  int /*<<< orphan*/  target_raw ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_PWD ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  N_SYMLINK_FOLLOW ; 
 int /*<<< orphan*/  N_SYMLINK_NOFOLLOW ; 
 int UMOUNT_NOFOLLOW_ ; 
 int _EFAULT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mounts_lock ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC5(addr_t target_addr, dword_t flags) {
    char target_raw[MAX_PATH];
    if (FUNC4(target_addr, target_raw, sizeof(target_raw)))
        return _EFAULT;
    char target[MAX_PATH];
    int err = FUNC2(AT_PWD, target_raw, target,
            flags & UMOUNT_NOFOLLOW_ ? N_SYMLINK_NOFOLLOW : N_SYMLINK_FOLLOW);
    if (err < 0)
        return err;

    FUNC1(&mounts_lock);
    err = FUNC0(target);
    FUNC3(&mounts_lock);
    return err;
}