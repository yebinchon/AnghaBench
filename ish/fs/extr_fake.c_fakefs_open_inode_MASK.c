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
struct TYPE_3__ {int /*<<< orphan*/ * path_from_inode; } ;
struct mount {TYPE_1__ stmt; } ;
struct fd {int /*<<< orphan*/ * ops; int /*<<< orphan*/  fake_inode; } ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_4__ {struct fd* (* open ) (struct mount*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct fd* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  O_RDONLY_ ; 
 int /*<<< orphan*/  O_RDWR_ ; 
 scalar_t__ FUNC1 (struct fd*) ; 
 scalar_t__ _EISDIR ; 
 scalar_t__ _ENOENT ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  fakefs_fdops ; 
 TYPE_2__ realfs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fd* FUNC9 (struct mount*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fd* FUNC10 (struct mount*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct fd *FUNC11(struct mount *mount, ino_t inode) {
    FUNC2(mount);
    sqlite3_stmt *stmt = mount->stmt.path_from_inode;
    FUNC7(stmt, 1, inode);
step:
    if (!FUNC4(mount, stmt)) {
        FUNC5(mount, stmt);
        FUNC6(mount);
        return FUNC0(_ENOENT);
    }
    const char *path = (const char *) FUNC8(stmt, 0);
    struct fd *fd = realfs.open(mount, path, O_RDWR_, 0);
    if (FUNC1(fd) == _EISDIR)
        fd = realfs.open(mount, path, O_RDONLY_, 0);
    if (FUNC1(fd) == _ENOENT)
        goto step;
    FUNC5(mount, stmt);
    FUNC3(mount);
    fd->fake_inode = inode;
    fd->ops = &fakefs_fdops;
    return fd;
}