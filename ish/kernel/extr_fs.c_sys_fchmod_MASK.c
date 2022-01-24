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
typedef  int /*<<< orphan*/  fd_t ;
typedef  int /*<<< orphan*/  dword_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* fsetattr ) (struct fd*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  S_IFMT ; 
 int /*<<< orphan*/  _EBADF ; 
 struct fd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fd*,int /*<<< orphan*/ ) ; 

dword_t FUNC3(fd_t f, dword_t mode) {
    struct fd *fd = FUNC0(f);
    if (fd == NULL)
        return _EBADF;
    mode &= ~S_IFMT;
    return fd->mount->fs->fsetattr(fd, FUNC1(mode, mode));
}