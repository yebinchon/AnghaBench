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
struct timeval {int dummy; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_8__ {char const* path; } ;
struct TYPE_9__ {int flags; int addrlen; int /*<<< orphan*/  fd; void* saddr; struct timeval const* timeout; TYPE_1__ unix_sock; int /*<<< orphan*/  connection_type; } ;
typedef  TYPE_2__ redisContext ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ EPROTONOSUPPORT ; 
 int REDIS_BLOCK ; 
 int REDIS_CONNECTED ; 
 int /*<<< orphan*/  REDIS_CONN_UNIX ; 
 int REDIS_ERR ; 
 scalar_t__ REDIS_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct timeval const*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval const*,struct timeval const*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,long*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,long) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int) ; 
 char const* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC10(redisContext *c, const char *path, const struct timeval *timeout) {
#ifndef _WIN32
    int blocking = (c->flags & REDIS_BLOCK);
    struct sockaddr_un *sa;
    long timeout_msec = -1;

    if (FUNC6(c,AF_UNIX) < 0)
        return REDIS_ERR;
    if (FUNC7(c,0) != REDIS_OK)
        return REDIS_ERR;

    c->connection_type = REDIS_CONN_UNIX;
    if (c->unix_sock.path != path)
        c->unix_sock.path = FUNC8(path);

    if (timeout) {
        if (c->timeout != timeout) {
            if (c->timeout == NULL)
                c->timeout = FUNC2(sizeof(struct timeval));

            FUNC3(c->timeout, timeout, sizeof(struct timeval));
        }
    } else {
        FUNC1(c->timeout);
        c->timeout = NULL;
    }

    if (FUNC4(c,&timeout_msec) != REDIS_OK)
        return REDIS_ERR;

    sa = (struct sockaddr_un*)(c->saddr = FUNC2(sizeof(struct sockaddr_un)));
    c->addrlen = sizeof(struct sockaddr_un);
    sa->sun_family = AF_UNIX;
    FUNC9(sa->sun_path, path, sizeof(sa->sun_path) - 1);
    if (FUNC0(c->fd, (struct sockaddr*)sa, sizeof(*sa)) == -1) {
        if (errno == EINPROGRESS && !blocking) {
            /* This is ok. */
        } else {
            if (FUNC5(c,timeout_msec) != REDIS_OK)
                return REDIS_ERR;
        }
    }

    /* Reset socket to be blocking after connect(2). */
    if (blocking && FUNC7(c,1) != REDIS_OK)
        return REDIS_ERR;

    c->flags |= REDIS_CONNECTED;
    return REDIS_OK;
#else
    /* We currently do not support Unix sockets for Windows. */
    /* TODO(m): https://devblogs.microsoft.com/commandline/af_unix-comes-to-windows/ */
    errno = EPROTONOSUPPORT;
    return REDIS_ERR;
#endif /* _WIN32 */
}