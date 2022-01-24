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
struct stat {scalar_t__ st_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,struct stat*) ; 

int FUNC1(void) {
#if defined(DISABLE_SYSTEMD) || !defined(__linux__)
    return 0;
#else

    struct stat a, b;

    /* We simply test whether the systemd cgroup hierarchy is mounted */

    if (FUNC0("/sys/fs/cgroup", &a) < 0)
        return 0;

    if (FUNC0("/sys/fs/cgroup/systemd", &b) < 0)
        return 0;

    return a.st_dev != b.st_dev;
#endif
}