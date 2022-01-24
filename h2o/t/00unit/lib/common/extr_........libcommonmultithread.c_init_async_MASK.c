#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int write; TYPE_4__* read; } ;
struct TYPE_6__ {TYPE_1__ async; } ;
typedef  TYPE_2__ h2o_multithread_queue_t ;
typedef  int /*<<< orphan*/  h2o_loop_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {TYPE_2__* data; } ;

/* Variables and functions */
 int EFD_CLOEXEC ; 
 int EFD_NONBLOCK ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  on_read ; 

__attribute__((used)) static void FUNC7(h2o_multithread_queue_t *queue, h2o_loop_t *loop)
{
#if defined(__linux__)
    /**
     * The kernel overhead of an eventfd file descriptor is
     * much lower than that of a pipe, and only one file descriptor is required
     */
    int fd;
    char buf[128];

    fd = FUNC1(0, EFD_NONBLOCK | EFD_CLOEXEC);
    if (fd == -1) {
        FUNC4("eventfd: %s", FUNC6(errno, buf, sizeof(buf)));
    }
    queue->async.write = fd;
    queue->async.read = FUNC3(loop, fd, 0);
#else
    int fds[2];
    char buf[128];

    if (cloexec_pipe(fds) != 0) {
        h2o_fatal("pipe: %s", h2o_strerror_r(errno, buf, sizeof(buf)));
    }
    fcntl(fds[1], F_SETFL, O_NONBLOCK);
    queue->async.write = fds[1];
    queue->async.read = h2o_evloop_socket_create(loop, fds[0], 0);
#endif
    queue->async.read->data = queue;
    FUNC5(queue->async.read, on_read);
}