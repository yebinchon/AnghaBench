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

/* Variables and functions */
 int O_CLOEXEC ; 
 int /*<<< orphan*/  cloexec_mutex ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(int fds[2])
{
#ifdef __linux__
#ifndef _GNU_SOURCE
    extern int FUNC5(int pipefd[2], int flags);
#endif
    return FUNC5(fds, O_CLOEXEC);
#else
    int ret = -1;
    pthread_mutex_lock(&cloexec_mutex);

    if (pipe(fds) != 0)
        goto Exit;
    if (set_cloexec(fds[0]) != 0 || set_cloexec(fds[1]) != 0)
        goto Exit;
    ret = 0;

Exit:
    pthread_mutex_unlock(&cloexec_mutex);
    return ret;
#endif
}