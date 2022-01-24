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
struct TYPE_2__ {int /*<<< orphan*/  inode_write_stat; } ;
struct mount {TYPE_1__ stmt; } ;
struct ish_stat {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct ish_stat*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mount *mount, ino_t inode, struct ish_stat *stat) {
    // update stats set stat = ? where inode = ?
    FUNC1(mount->stmt.inode_write_stat, 1, stat, sizeof(*stat), SQLITE_TRANSIENT);
    FUNC2(mount->stmt.inode_write_stat, 2, inode);
    FUNC0(mount, mount->stmt.inode_write_stat);
}