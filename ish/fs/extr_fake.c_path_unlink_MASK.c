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
struct TYPE_2__ {int /*<<< orphan*/  path_unlink; } ;
struct mount {TYPE_1__ stmt; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (struct mount*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct mount*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mount *mount, const char *path) {
    ino_t inode = FUNC4(mount, path);
    if (inode == 0)
        FUNC2("path_unlink(%s): nonexistent path", path);
    // delete from paths where path = ?
    FUNC0(mount->stmt.path_unlink, 1, path);
    FUNC1(mount, mount->stmt.path_unlink);
    if (FUNC3(mount, inode))
        FUNC5(mount, inode);
}