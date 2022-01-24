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
struct mount {int dummy; } ;
struct ish_stat {int mode; scalar_t__ rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct fd {scalar_t__ fake_inode; int /*<<< orphan*/ * ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; } ;
struct TYPE_3__ {struct fd* (* open ) (struct mount*,char const*,int,int) ;} ;

/* Variables and functions */
 struct fd* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct fd*) ; 
 int O_CREAT_ ; 
 int S_IFREG ; 
 int /*<<< orphan*/  _ENOENT ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  fakefs_fdops ; 
 int /*<<< orphan*/  FUNC4 (struct fd*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*,char const*,struct ish_stat*) ; 
 void* FUNC6 (struct mount*,char const*) ; 
 TYPE_1__ realfs ; 
 struct fd* FUNC7 (struct mount*,char const*,int,int) ; 

__attribute__((used)) static struct fd *FUNC8(struct mount *mount, const char *path, int flags, int mode) {
    struct fd *fd = realfs.open(mount, path, flags, 0666);
    if (FUNC1(fd))
        return fd;
    FUNC2(mount);
    fd->fake_inode = FUNC6(mount, path);
    if (flags & O_CREAT_) {
        struct ish_stat ishstat;
        ishstat.mode = mode | S_IFREG;
        ishstat.uid = current->euid;
        ishstat.gid = current->egid;
        ishstat.rdev = 0;
        if (fd->fake_inode == 0) {
            FUNC5(mount, path, &ishstat);
            fd->fake_inode = FUNC6(mount, path);
        }
    }
    FUNC3(mount);
    if (fd->fake_inode == 0) {
        // metadata for this file is missing
        // TODO unlink the real file
        FUNC4(fd);
        return FUNC0(_ENOENT);
    }
    fd->ops = &fakefs_fdops;
    return fd;
}