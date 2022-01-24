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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_OPEN_MAX ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  daemon_close_notify_thread ; 
 int /*<<< orphan*/  daemon_conn_thread ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) __attribute__((noreturn)) static void FUNC7(int listen_fd, int close_notify_fd, const char *tempdir)
{
    pthread_t tid;
    pthread_attr_t thattr;
    int sock_fd;

    { /* close all descriptors (except STDIN, STDOUT, STRERR, listen_fd, close_notify_fd) */
        int fd = (int)FUNC6(_SC_OPEN_MAX) - 1;
        for (; fd > 2; --fd) {
            if (fd == listen_fd || fd == close_notify_fd)
                continue;
            FUNC1(fd);
        }
    }

    FUNC3(&thattr);
    FUNC4(&thattr, 1);

    if (FUNC5(&tid, &thattr, daemon_close_notify_thread, (char *)NULL + close_notify_fd) != 0)
        FUNC2("pthread_create failed");

    while (1) {
        while ((sock_fd = FUNC0(listen_fd, NULL, NULL)) == -1)
            ;
        if (FUNC5(&tid, &thattr, daemon_conn_thread, (char *)NULL + sock_fd) != 0)
            FUNC2("pthread_create failed");
    }
}