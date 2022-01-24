#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_5__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_IO ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(redisContext *c, int blocking) {
#ifndef _WIN32
    int flags;

    /* Set the socket nonblocking.
     * Note that fcntl(2) for F_GETFL and F_SETFL can't be
     * interrupted by a signal. */
    if ((flags = FUNC1(c->fd, F_GETFL)) == -1) {
        FUNC0(c,REDIS_ERR_IO,"fcntl(F_GETFL)");
        FUNC3(c);
        return REDIS_ERR;
    }

    if (blocking)
        flags &= ~O_NONBLOCK;
    else
        flags |= O_NONBLOCK;

    if (FUNC1(c->fd, F_SETFL, flags) == -1) {
        FUNC0(c,REDIS_ERR_IO,"fcntl(F_SETFL)");
        FUNC3(c);
        return REDIS_ERR;
    }
#else
    u_long mode = blocking ? 0 : 1;
    if (ioctl(c->fd, FIONBIO, &mode) == -1) {
        __redisSetErrorFromErrno(c, REDIS_ERR_IO, "ioctl(FIONBIO)");
        redisNetClose(c);
        return REDIS_ERR;
    }
#endif /* _WIN32 */
    return REDIS_OK;
}