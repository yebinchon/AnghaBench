#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct TYPE_6__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  POLLOUT ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_IO ; 
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int FUNC1 (struct pollfd*,int,long) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(redisContext *c, long msec) {
    struct pollfd   wfd[1];

    wfd[0].fd     = c->fd;
    wfd[0].events = POLLOUT;

    if (errno == EINPROGRESS) {
        int res;

        if ((res = FUNC1(wfd, 1, msec)) == -1) {
            FUNC0(c, REDIS_ERR_IO, "poll(2)");
            FUNC3(c);
            return REDIS_ERR;
        } else if (res == 0) {
            errno = ETIMEDOUT;
            FUNC0(c,REDIS_ERR_IO,NULL);
            FUNC3(c);
            return REDIS_ERR;
        }

        if (FUNC2(c) != REDIS_OK)
            return REDIS_ERR;

        return REDIS_OK;
    }

    FUNC0(c,REDIS_ERR_IO,NULL);
    FUNC3(c);
    return REDIS_ERR;
}