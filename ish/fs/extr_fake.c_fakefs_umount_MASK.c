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
struct TYPE_2__ {int /*<<< orphan*/  try_cleanup_inode; int /*<<< orphan*/  path_from_inode; int /*<<< orphan*/  path_rename; int /*<<< orphan*/  path_unlink; int /*<<< orphan*/  path_link; int /*<<< orphan*/  inode_write_stat; int /*<<< orphan*/  inode_read_stat; int /*<<< orphan*/  path_create_path; int /*<<< orphan*/  path_create_stat; int /*<<< orphan*/  path_read_stat; int /*<<< orphan*/  path_get_inode; int /*<<< orphan*/  rollback; int /*<<< orphan*/  commit; int /*<<< orphan*/  begin; } ;
struct mount {scalar_t__ db; TYPE_1__ stmt; } ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mount *mount) {
    if (mount->db) {
        FUNC2(mount->stmt.begin);
        FUNC2(mount->stmt.commit);
        FUNC2(mount->stmt.rollback);
        FUNC2(mount->stmt.path_get_inode);
        FUNC2(mount->stmt.path_read_stat);
        FUNC2(mount->stmt.path_create_stat);
        FUNC2(mount->stmt.path_create_path);
        FUNC2(mount->stmt.inode_read_stat);
        FUNC2(mount->stmt.inode_write_stat);
        FUNC2(mount->stmt.path_link);
        FUNC2(mount->stmt.path_unlink);
        FUNC2(mount->stmt.path_rename);
        FUNC2(mount->stmt.path_from_inode);
        FUNC2(mount->stmt.try_cleanup_inode);
        int err = FUNC1(mount->db);
        if (err != SQLITE_OK) {
            FUNC0("sqlite failed to close: %d\n", err);
        }
    }
    /* return realfs.umount(mount); */
    return 0;
}