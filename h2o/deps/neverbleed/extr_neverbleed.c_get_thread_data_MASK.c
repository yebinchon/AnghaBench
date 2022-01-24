#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_neverbleed_thread_data_t {scalar_t__ self_pid; int fd; } ;
typedef  int ssize_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_3__ {int /*<<< orphan*/  thread_key; int /*<<< orphan*/  auth_token; int /*<<< orphan*/  sun_; } ;
typedef  TYPE_1__ neverbleed_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int SOCK_CLOEXEC ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 () ; 
 struct st_neverbleed_thread_data_t* FUNC4 (int) ; 
 struct st_neverbleed_thread_data_t* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct st_neverbleed_thread_data_t*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int) ; 

struct st_neverbleed_thread_data_t *FUNC10(neverbleed_t *nb)
{
    struct st_neverbleed_thread_data_t *thdata;
    pid_t self_pid = FUNC3();
    ssize_t r;

    if ((thdata = FUNC5(nb->thread_key)) != NULL) {
        if (thdata->self_pid == self_pid)
            return thdata;
        /* we have been forked! */
        FUNC0(thdata->fd);
    } else {
        if ((thdata = FUNC4(sizeof(*thdata))) == NULL)
            FUNC2("malloc failed");
    }

    thdata->self_pid = self_pid;
#ifdef SOCK_CLOEXEC
    if ((thdata->fd = socket(PF_UNIX, SOCK_STREAM | SOCK_CLOEXEC, 0)) == -1)
        dief("socket(2) failed");
#else
    if ((thdata->fd = FUNC8(PF_UNIX, SOCK_STREAM, 0)) == -1)
        FUNC2("socket(2) failed");
    FUNC7(thdata->fd);
#endif
    while (FUNC1(thdata->fd, (void *)&nb->sun_, sizeof(nb->sun_)) != 0)
        if (errno != EINTR)
            FUNC2("failed to connect to privsep daemon");
    while ((r = FUNC9(thdata->fd, nb->auth_token, sizeof(nb->auth_token))) == -1 && errno == EINTR)
        ;
    if (r != sizeof(nb->auth_token))
        FUNC2("failed to send authentication token");
    FUNC6(nb->thread_key, thdata);

    return thdata;
}