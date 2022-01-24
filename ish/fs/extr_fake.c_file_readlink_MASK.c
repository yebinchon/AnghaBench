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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,size_t) ; 

__attribute__((used)) static ssize_t FUNC5(struct mount *mount, const char *path, char *buf, size_t bufsize) {
    // broken symlinks can't be included in an iOS app or else Xcode craps out
    int fd = FUNC3(mount->root_fd, FUNC2(path), O_RDONLY);
    if (fd < 0)
        return FUNC1();
    int err = FUNC4(fd, buf, bufsize);
    FUNC0(fd);
    if (err < 0)
        return FUNC1();
    return err;
}