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
struct TYPE_2__ {int /*<<< orphan*/  path_get_inode; } ;
struct mount {TYPE_1__ stmt; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC1 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ino_t FUNC4(struct mount *mount, const char *path) {
    // select inode from paths where path = ?
    FUNC0(mount->stmt.path_get_inode, 1, path);
    ino_t inode = 0;
    if (FUNC1(mount, mount->stmt.path_get_inode))
        inode = FUNC3(mount->stmt.path_get_inode, 0);
    FUNC2(mount, mount->stmt.path_get_inode);
    return inode;
}