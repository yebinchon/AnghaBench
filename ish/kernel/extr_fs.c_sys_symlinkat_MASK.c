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
typedef  int /*<<< orphan*/  target ;
struct fd {int dummy; } ;
typedef  int /*<<< orphan*/  link ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _EBADF ; 
 int /*<<< orphan*/  _EFAULT ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct fd*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC4(addr_t target_addr, fd_t at_f, addr_t link_addr) {
    char target[MAX_PATH];
    if (FUNC3(target_addr, target, sizeof(target)))
        return _EFAULT;
    char link[MAX_PATH];
    if (FUNC3(link_addr, link, sizeof(link)))
        return _EFAULT;
    FUNC0("symlinkat(\"%s\", %d, \"%s\")", target, at_f, link);
    struct fd *at = FUNC1(at_f);
    if (at == NULL)
        return _EBADF;
    return FUNC2(target, at, link);
}