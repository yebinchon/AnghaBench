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
struct statbuf {int /*<<< orphan*/  rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; int /*<<< orphan*/  inode; } ;
struct ish_stat {int /*<<< orphan*/  rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; } ;
struct fd {int /*<<< orphan*/  fake_inode; int /*<<< orphan*/  mount; } ;
struct TYPE_2__ {int (* fstat ) (struct fd*,struct statbuf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ish_stat*) ; 
 TYPE_1__ realfs ; 
 int FUNC3 (struct fd*,struct statbuf*) ; 

__attribute__((used)) static int FUNC4(struct fd *fd, struct statbuf *fake_stat) {
    int err = realfs.fstat(fd, fake_stat);
    if (err < 0)
        return err;
    FUNC0(fd->mount);
    struct ish_stat ishstat;
    FUNC2(fd->mount, fd->fake_inode, &ishstat);
    FUNC1(fd->mount);
    fake_stat->inode = fd->fake_inode;
    fake_stat->mode = ishstat.mode;
    fake_stat->uid = ishstat.uid;
    fake_stat->gid = ishstat.gid;
    fake_stat->rdev = ishstat.rdev;
    return 0;
}