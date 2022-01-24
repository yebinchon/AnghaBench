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
typedef  int off_t_ ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int MAX_PATH ; 
 int _EFAULT ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC3(addr_t path_addr, dword_t size_low, dword_t size_high) {
    off_t_ size = ((off_t_) size_high << 32) | size_low;
    char path[MAX_PATH];
    if (FUNC2(path_addr, path, sizeof(path)))
        return _EFAULT;
    return FUNC0(NULL, path, FUNC1(size, size), true);
}