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
struct mount {int /*<<< orphan*/  root_fd; } ;
struct ish_stat {int mode; scalar_t__ rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int S_IFLNK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int errno ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*,char const*,struct ish_stat*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mount *mount, const char *target, const char *link) {
    FUNC1(mount);
    // create a file containing the target
    int fd = FUNC6(mount->root_fd, FUNC5(link), O_WRONLY | O_CREAT | O_EXCL, 0666);
    if (fd < 0) {
        FUNC3(mount);
        return FUNC4();
    }
    ssize_t res = FUNC10(fd, target, FUNC8(target));
    FUNC0(fd);
    if (res < 0) {
        int saved_errno = errno;
        FUNC9(mount->root_fd, FUNC5(link), 0);
        FUNC3(mount);
        errno = saved_errno;
        return FUNC4();
    }

    // customize the stat info so it looks like a link
    struct ish_stat ishstat;
    ishstat.mode = S_IFLNK | 0777; // symlinks always have full permissions
    ishstat.uid = current->euid;
    ishstat.gid = current->egid;
    ishstat.rdev = 0;
    FUNC7(mount, link, &ishstat);
    FUNC2(mount);
    return 0;
}