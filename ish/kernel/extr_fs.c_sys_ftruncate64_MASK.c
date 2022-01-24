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
struct fd {TYPE_2__* mount; } ;
typedef  int off_t_ ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int (* fsetattr ) (struct fd*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int _EBADF ; 
 struct fd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct fd*,int /*<<< orphan*/ ) ; 

dword_t FUNC3(fd_t f, dword_t size_low, dword_t size_high) {
    off_t_ size = ((off_t_) size_high << 32) | size_low;
    struct fd *fd = FUNC0(f);
    if (fd == NULL)
        return _EBADF;
    return fd->mount->fs->fsetattr(fd, FUNC1(size, size));
}