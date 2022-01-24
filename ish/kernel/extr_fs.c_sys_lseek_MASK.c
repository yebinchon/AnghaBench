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
struct fd {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  scalar_t__ dword_t ;
struct TYPE_2__ {scalar_t__ (* lseek ) (struct fd*,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ _EBADF ; 
 scalar_t__ _EOVERFLOW ; 
 scalar_t__ _ESPIPE ; 
 struct fd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct fd*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

dword_t FUNC4(fd_t f, dword_t off, dword_t whence) {
    struct fd *fd = FUNC0(f);
    if (fd == NULL)
        return _EBADF;
    if (!fd->ops->lseek)
        return _ESPIPE;
    FUNC1(&fd->lock);
    off_t res = fd->ops->lseek(fd, off, whence);
    FUNC3(&fd->lock);
    if ((dword_t) res != res)
        return _EOVERFLOW;
    return res;
}