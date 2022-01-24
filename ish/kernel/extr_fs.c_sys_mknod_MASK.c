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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  mode_t_ ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  dev_t_ ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _EFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC4(addr_t path_addr, mode_t_ mode, dev_t_ dev) {
    char path[MAX_PATH];
    if (FUNC3(path_addr, path, sizeof(path)))
        return _EFAULT;
    FUNC0("mknod(\"%s\", %#x, %#x)", path, mode, dev);
    FUNC1(&mode);
    return FUNC2(path, mode, dev);
}