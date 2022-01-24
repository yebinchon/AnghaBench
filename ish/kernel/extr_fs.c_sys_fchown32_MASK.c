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
typedef  scalar_t__ uid_t_ ;
typedef  scalar_t__ uid_t ;
struct fd {TYPE_2__* mount; } ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int (* fsetattr ) (struct fd*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int _EBADF ; 
 struct fd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct fd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uid ; 

dword_t FUNC4(fd_t f, uid_t_ owner, uid_t_ group) {
    struct fd *fd = FUNC0(f);
    if (fd == NULL)
        return _EBADF;
    int err;
    if (owner != (uid_t) -1) {
        err = fd->mount->fs->fsetattr(fd, FUNC1(uid, owner));
        if (err < 0)
            return err;
    }
    if (group != (uid_t) -1) {
        err = fd->mount->fs->fsetattr(fd, FUNC1(gid, group));
        if (err < 0)
            return err;
    }
    return 0;
}