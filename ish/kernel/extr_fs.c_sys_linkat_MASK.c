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
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  dst ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _EBADF ; 
 int /*<<< orphan*/  _EFAULT ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fd*,char*,struct fd*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC4(fd_t src_at_f, addr_t src_addr, fd_t dst_at_f, addr_t dst_addr) {
    char src[MAX_PATH];
    if (FUNC3(src_addr, src, sizeof(src)))
        return _EFAULT;
    char dst[MAX_PATH];
    if (FUNC3(dst_addr, dst, sizeof(dst)))
        return _EFAULT;
    FUNC0("linkat(%d, \"%s\", %d, \"%s\")", src_at_f, src, dst_at_f, dst);
    struct fd *src_at = FUNC1(src_at_f);
    if (src_at == NULL)
        return _EBADF;
    struct fd *dst_at = FUNC1(dst_at_f);
    if (dst_at == NULL)
        return _EBADF;
    return FUNC2(src_at, src, dst_at, dst);
}