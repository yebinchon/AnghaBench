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
struct mount {int dummy; } ;
struct ish_stat {int /*<<< orphan*/  rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_2__ {int (* stat ) (struct mount*,char const*,struct statbuf*,int) ;} ;

/* Variables and functions */
 int _ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*,char const*,struct ish_stat*,int /*<<< orphan*/ *) ; 
 TYPE_1__ realfs ; 
 int FUNC4 (struct mount*,char const*,struct statbuf*,int) ; 

__attribute__((used)) static int FUNC5(struct mount *mount, const char *path, struct statbuf *fake_stat, bool follow_links) {
    FUNC0(mount);
    struct ish_stat ishstat;
    ino_t inode;
    if (!FUNC3(mount, path, &ishstat, &inode)) {
        FUNC2(mount);
        return _ENOENT;
    }
    int err = realfs.stat(mount, path, fake_stat, follow_links);
    FUNC1(mount);
    if (err < 0)
        return err;
    fake_stat->inode = inode;
    fake_stat->mode = ishstat.mode;
    fake_stat->uid = ishstat.uid;
    fake_stat->gid = ishstat.gid;
    fake_stat->rdev = ishstat.rdev;
    return 0;
}