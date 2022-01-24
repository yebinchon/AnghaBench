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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int EINVAL ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int SD_LISTEN_FDS_START ; 
 int errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 unsigned long FUNC3 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(int unset_environment) {
    int r, fd;
    const char *e;
    char *p = NULL;
    unsigned long l;

    if (!(e = FUNC1("LISTEN_PID"))) {
        r = 0;
        goto finish;
    }

    errno = 0;
    l = FUNC3(e, &p, 10);

    if (errno != 0) {
        r = -errno;
        goto finish;
    }

    if (!p || *p || l <= 0) {
        r = -EINVAL;
        goto finish;
    }

    /* Is this for us? */
    if (FUNC2() != (pid_t)l) {
        r = 0;
        goto finish;
    }

    if (!(e = FUNC1("LISTEN_FDS"))) {
        r = 0;
        goto finish;
    }

    errno = 0;
    l = FUNC3(e, &p, 10);

    if (errno != 0) {
        r = -errno;
        goto finish;
    }

    if (!p || *p) {
        r = -EINVAL;
        goto finish;
    }

    for (fd = SD_LISTEN_FDS_START; fd < SD_LISTEN_FDS_START + (int)l; fd++) {
        int flags;

        if ((flags = FUNC0(fd, F_GETFD)) < 0) {
            r = -errno;
            goto finish;
        }

        if (flags & FD_CLOEXEC)
            continue;

        if (FUNC0(fd, F_SETFD, flags | FD_CLOEXEC) < 0) {
            r = -errno;
            goto finish;
        }
    }

    r = (int)l;

finish:
    if (unset_environment) {
        FUNC4("LISTEN_PID");
        FUNC4("LISTEN_FDS");
    }

    return r;
}