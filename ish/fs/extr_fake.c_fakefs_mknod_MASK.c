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
typedef  int mode_t_ ;
typedef  scalar_t__ dev_t_ ;
struct TYPE_4__ {int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; } ;
struct TYPE_3__ {int (* mknod ) (struct mount*,char const*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int S_IFMT ; 
 int S_IFREG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*,char const*,struct ish_stat*) ; 
 TYPE_1__ realfs ; 
 int FUNC7 (struct mount*,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mount *mount, const char *path, mode_t_ mode, dev_t_ dev) {
    mode_t_ real_mode = 0666;
    if (FUNC0(mode) || FUNC1(mode) || FUNC2(mode))
        real_mode |= S_IFREG;
    else
        real_mode |= mode & S_IFMT;
    FUNC3(mount);
    int err = realfs.mknod(mount, path, real_mode, 0);
    if (err < 0) {
        FUNC5(mount);
        return err;
    }
    struct ish_stat stat;
    stat.mode = mode;
    stat.uid = current->euid;
    stat.gid = current->egid;
    stat.rdev = 0;
    if (FUNC0(mode) || FUNC1(mode))
        stat.rdev = dev;
    FUNC6(mount, path, &stat);
    FUNC4(mount);
    return err;
}