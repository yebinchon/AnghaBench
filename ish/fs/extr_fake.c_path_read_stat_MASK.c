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
struct TYPE_2__ {int /*<<< orphan*/  path_read_stat; } ;
struct mount {TYPE_1__ stmt; } ;
struct ish_stat {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char const*) ; 
 int FUNC1 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(struct mount *mount, const char *path, struct ish_stat *stat, ino_t *inode) {
    // select inode, stat from stats natural join paths where path = ?
    FUNC0(mount->stmt.path_read_stat, 1, path);
    bool exists = FUNC1(mount, mount->stmt.path_read_stat);
    if (exists) {
        if (inode)
            *inode = FUNC4(mount->stmt.path_read_stat, 0);
        if (stat)
            *stat = *(struct ish_stat *) FUNC3(mount->stmt.path_read_stat, 1);
    }
    FUNC2(mount, mount->stmt.path_read_stat);
    return exists;
}