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
struct mount {int /*<<< orphan*/  root_fd; } ;
struct fd {int real_fd; int /*<<< orphan*/ * dir; } ;

/* Variables and functions */
 struct fd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct fd* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  realfs_fdops ; 

__attribute__((used)) static struct fd *FUNC6(struct mount *mount, const char *path, int flags, int mode) {
    int real_flags = FUNC4(flags);
    int fd_no = FUNC5(mount->root_fd, FUNC3(path), real_flags, mode);
    if (fd_no < 0)
        return FUNC0(FUNC1());
    struct fd *fd = FUNC2(&realfs_fdops);
    fd->real_fd = fd_no;
    fd->dir = NULL;
    return fd;
}