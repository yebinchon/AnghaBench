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
struct fd {int /*<<< orphan*/  real_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct statbuf*,struct stat*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int FUNC3(struct fd *fd, struct statbuf *fake_stat) {
    struct stat real_stat;
    if (FUNC2(fd->real_fd, &real_stat) < 0)
        return FUNC1();
    FUNC0(fake_stat, &real_stat);
    return 0;
}