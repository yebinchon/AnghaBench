#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int mode; int /*<<< orphan*/  rdev; } ;
struct fd {scalar_t__ refcount; int /*<<< orphan*/  flags; TYPE_1__ stat; } ;
struct TYPE_6__ {TYPE_2__* files; } ;
struct TYPE_5__ {void** files; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_CHAR ; 
 scalar_t__ FUNC0 (struct fd*) ; 
 int /*<<< orphan*/  O_RDWR_ ; 
 int S_IFCHR ; 
 int S_IRUSR ; 
 struct fd* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,struct fd*) ; 
 void* FUNC4 (struct fd*) ; 
 struct fd* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(const char *file, int major, int minor) {
    struct fd *fd = FUNC5(file, O_RDWR_, 0);
    if (FUNC0(fd)) {
        // fallback to adhoc files for stdio
        fd = FUNC1(NULL);
        fd->stat.rdev = FUNC2(major, minor);
        fd->stat.mode = S_IFCHR | S_IRUSR;
        fd->flags = O_RDWR_;
        int err = FUNC3(major, minor, DEV_CHAR, fd);
        if (err < 0)
            return err;
    }

    fd->refcount = 0;
    current->files->files[0] = FUNC4(fd);
    current->files->files[1] = FUNC4(fd);
    current->files->files[2] = FUNC4(fd);
    return 0;
}