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
typedef  int /*<<< orphan*/  uint_t ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
struct fd {TYPE_1__ eventfd; } ;
typedef  int int_t ;

/* Variables and functions */
 int O_CLOEXEC_ ; 
 int O_NONBLOCK_ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int _EINVAL ; 
 int _ENOMEM ; 
 struct fd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eventfd_ops ; 
 int FUNC2 (struct fd*,int) ; 

int_t FUNC3(uint_t initval, int_t flags) {
    FUNC0("eventfd(%d, %#x)", initval, flags);
    if (flags & ~(O_CLOEXEC_|O_NONBLOCK_))
        return _EINVAL;

    struct fd *fd = FUNC1(&eventfd_ops);
    if (fd == NULL)
        return _ENOMEM;
    fd->eventfd.val = initval;
    return FUNC2(fd, flags);
}