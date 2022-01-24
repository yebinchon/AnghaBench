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
struct fd {int /*<<< orphan*/  mount; int /*<<< orphan*/ * ops; } ;
struct dir_entry {char* name; int /*<<< orphan*/  inode; } ;
struct TYPE_2__ {int (* readdir ) (struct fd*,struct dir_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fakefs_fdops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ realfs_fdops ; 
 int /*<<< orphan*/  FUNC4 (struct fd*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (struct fd*,struct dir_entry*) ; 

__attribute__((used)) static int FUNC9(struct fd *fd, struct dir_entry *entry) {
    FUNC0(fd->ops == &fakefs_fdops);
    int res;
retry:
    res = realfs_fdops.readdir(fd, entry);
    if (res <= 0)
        return res;

    // this is annoying
    char entry_path[MAX_PATH + 1];
    FUNC4(fd, entry_path);
    if (FUNC6(entry->name, "..") == 0) {
        if (FUNC6(entry_path, "") != 0) {
            *FUNC7(entry_path, '/') = '\0';
        }
    } else if (FUNC6(entry->name, ".") != 0) {
        // god I don't know what to do if this would overflow
        FUNC5(entry_path, "/");
        FUNC5(entry_path, entry->name);
    }

    FUNC1(fd->mount);
    entry->inode = FUNC3(fd->mount, entry_path);
    FUNC2(fd->mount);
    // it's quite possible that due to some mishap there's no metadata for this file
    // so just skip this entry, instead of crashing the program, so there's hope for recovery
    if (entry->inode == 0)
        goto retry;
    return res;
}