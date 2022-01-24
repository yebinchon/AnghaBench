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
typedef  int /*<<< orphan*/  off_t_ ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct mount *mount, const char *path, off_t_ size) {
    int fd = FUNC4(mount->root_fd, FUNC2(path), O_RDWR);
    if (fd < 0)
        return FUNC1();
    int err = 0;
    if (FUNC3(fd, size) < 0)
        err = FUNC1();
    FUNC0(fd);
    return err;
}