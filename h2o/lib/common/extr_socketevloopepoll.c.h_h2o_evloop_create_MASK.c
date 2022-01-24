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
struct st_h2o_evloop_epoll_t {int /*<<< orphan*/  super; int /*<<< orphan*/  ep; } ;
typedef  int /*<<< orphan*/  h2o_evloop_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  cloexec_mutex ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

h2o_evloop_t *FUNC7(void)
{
    struct st_h2o_evloop_epoll_t *loop = (struct st_h2o_evloop_epoll_t *)FUNC0(sizeof(*loop));

    FUNC5(&cloexec_mutex);
    loop->ep = FUNC1(10);
    while (FUNC2(loop->ep, F_SETFD, FD_CLOEXEC) == -1) {
        if (errno != EAGAIN) {
            char buf[128];
            FUNC3("h2o_evloop_create: failed to set FD_CLOEXEC: %s\n", FUNC4(errno, buf, sizeof(buf)));
        }
    }
    FUNC6(&cloexec_mutex);

    return &loop->super;
}