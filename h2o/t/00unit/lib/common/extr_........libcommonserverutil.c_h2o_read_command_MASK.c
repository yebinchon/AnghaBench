#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int pid_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ h2o_iovec_t ;
struct TYPE_9__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ h2o_buffer_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  cloexec_mutex ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC4 (TYPE_2__**,int) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 int FUNC5 (char const*,char**,int*,int) ; 
 scalar_t__ FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC11(const char *cmd, char **argv, h2o_buffer_t **resp, int *child_status)
{
    int respfds[2] = {-1, -1};
    pid_t pid = -1;
    int mutex_locked = 0, ret = -1;

    FUNC3(resp, &h2o_socket_buffer_prototype);

    FUNC7(&cloexec_mutex);
    mutex_locked = 1;

    /* create pipe for reading the result */
    if (FUNC6(respfds) != 0)
        goto Exit;
    if (FUNC1(respfds[0], F_SETFD, O_CLOEXEC) < 0)
        goto Exit;

    /* spawn */
    int mapped_fds[] = {respfds[1], 1, /* stdout of the child process is read from the pipe */
                        -1};
    if ((pid = FUNC5(cmd, argv, mapped_fds, 1)) == -1)
        goto Exit;
    FUNC0(respfds[1]);
    respfds[1] = -1;

    FUNC8(&cloexec_mutex);
    mutex_locked = 0;

    /* read the response from pipe */
    while (1) {
        h2o_iovec_t buf = FUNC4(resp, 8192);
        ssize_t r;
        while ((r = FUNC9(respfds[0], buf.base, buf.len)) == -1 && errno == EINTR)
            ;
        if (r <= 0)
            break;
        (*resp)->size += r;
    }

Exit:
    if (mutex_locked)
        FUNC8(&cloexec_mutex);
    if (pid != -1) {
        /* wait for the child to complete */
        pid_t r;
        while ((r = FUNC10(pid, child_status, 0)) == -1 && errno == EINTR)
            ;
        if (r == pid) {
            /* success */
            ret = 0;
        }
    }
    if (respfds[0] != -1)
        FUNC0(respfds[0]);
    if (respfds[1] != -1)
        FUNC0(respfds[1]);
    if (ret != 0)
        FUNC2(resp);

    return ret;
}