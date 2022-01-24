#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fd {int /*<<< orphan*/  dir; } ;
struct dirent {int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_ino; } ;
struct dir_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 scalar_t__ errno ; 
 int FUNC0 () ; 
 struct dirent* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct fd *fd, struct dir_entry *entry) {
    FUNC2(fd);
    errno = 0;
    struct dirent *dirent = FUNC1(fd->dir);
    if (dirent == NULL) {
        if (errno != 0)
            return FUNC0();
        else
            return 0;
    }
    entry->inode = dirent->d_ino;
    FUNC3(entry->name, dirent->d_name);
    return 1;
}