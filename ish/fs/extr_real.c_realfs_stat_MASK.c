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
struct statbuf {int dummy; } ;
struct stat {int dummy; } ;
struct mount {int /*<<< orphan*/  root_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  FUNC0 (struct statbuf*,struct stat*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stat*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mount *mount, const char *path, struct statbuf *fake_stat, bool follow_links) {
    struct stat real_stat;
    if (FUNC3(mount->root_fd, FUNC2(path), &real_stat, follow_links ? 0 : AT_SYMLINK_NOFOLLOW) < 0)
        return FUNC1();
    FUNC0(fake_stat, &real_stat);
    return 0;
}