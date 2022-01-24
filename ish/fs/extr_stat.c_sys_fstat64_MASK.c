#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct statbuf {int dummy; } ;
struct newstat64 {int dummy; } ;
struct fd {TYPE_2__* mount; } ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int (* fstat ) (struct fd*,struct statbuf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _EBADF ; 
 int _EFAULT ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 struct newstat64 FUNC2 (struct statbuf) ; 
 int FUNC3 (struct fd*,struct statbuf*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct newstat64) ; 

dword_t FUNC5(fd_t fd_no, addr_t statbuf_addr) {
    FUNC0("fstat64(%d, 0x%x)", fd_no, statbuf_addr);
    struct fd *fd = FUNC1(fd_no);
    if (fd == NULL)
        return _EBADF;
    struct statbuf stat = {};
    int err = fd->mount->fs->fstat(fd, &stat);
    if (err < 0)
        return err;
    struct newstat64 newstat = FUNC2(stat);
    if (FUNC4(statbuf_addr, newstat))
        return _EFAULT;
    return 0;
}