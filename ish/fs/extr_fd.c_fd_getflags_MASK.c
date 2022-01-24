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
struct fd {int flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* getflags ) (struct fd*) ;} ;

/* Variables and functions */
 int FUNC0 (struct fd*) ; 

int FUNC1(struct fd *fd) {
    if (fd->ops->getflags)
        return fd->ops->getflags(fd);
    return fd->flags;
}