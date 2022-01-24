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
struct fd {int dummy; } ;
typedef  scalar_t__ fd_t ;
struct TYPE_4__ {TYPE_1__* files; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cloexec; } ;

/* Variables and functions */
 int O_CLOEXEC_ ; 
 int O_NONBLOCK_ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC1 (struct fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fd*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

fd_t FUNC5(struct fd *fd, int flags) {
    FUNC3(&current->files->lock);
    fd_t f = FUNC1(fd, 0);
    if (f >= 0) {
        if (flags & O_CLOEXEC_)
            FUNC0(f, current->files->cloexec);
        if (flags & O_NONBLOCK_)
            FUNC2(fd, O_NONBLOCK_);
    }
    FUNC4(&current->files->lock);
    return f;
}