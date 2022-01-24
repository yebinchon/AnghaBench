#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yoml_t ;
typedef  int /*<<< orphan*/  tfo_queues ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;
typedef  int /*<<< orphan*/  flag ;
struct TYPE_2__ {int tfo_queues; } ;

/* Variables and functions */
 int AF_INET6 ; 
 int /*<<< orphan*/  H2O_SOMAXCONN ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int IPPROTO_TCP ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  TCP_DEFER_ACCEPT ; 
 int /*<<< orphan*/  TCP_FASTOPEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char const*,char const*,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int,int /*<<< orphan*/ ,void const*,int) ; 
 int FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(h2o_configurator_command_t *cmd, yoml_t *node, const char *hostname, const char *servname, int domain,
                              int type, int protocol, struct sockaddr *addr, socklen_t addrlen)
{
    int fd;

    if ((fd = FUNC8(domain, type, protocol)) == -1)
        goto Error;
    FUNC6(fd);
    { /* set reuseaddr */
        int flag = 1;
        if (FUNC7(fd, SOL_SOCKET, SO_REUSEADDR, &flag, sizeof(flag)) != 0)
            goto Error;
    }
#ifdef IPV6_V6ONLY
    /* set IPv6only */
    if (domain == AF_INET6) {
        int flag = 1;
        if (setsockopt(fd, IPPROTO_IPV6, IPV6_V6ONLY, &flag, sizeof(flag)) != 0)
            goto Error;
    }
#endif
    if (FUNC1(fd, addr, addrlen) != 0)
        goto Error;

    /* TCP-specific actions */
    if (protocol == IPPROTO_TCP) {
#ifdef TCP_DEFER_ACCEPT
        { /* set TCP_DEFER_ACCEPT */
            int flag = 1;
            if (setsockopt(fd, IPPROTO_TCP, TCP_DEFER_ACCEPT, &flag, sizeof(flag)) != 0)
                goto Error;
        }
#endif
        /* listen */
        if (FUNC5(fd, H2O_SOMAXCONN) != 0)
            goto Error;
        /* set TCP_FASTOPEN; when tfo_queues is zero TFO is always disabled */
        if (conf.tfo_queues > 0) {
#ifdef TCP_FASTOPEN
            int tfo_queues;
#ifdef __APPLE__
            /* In OS X, the option value for TCP_FASTOPEN must be 1 if is's enabled */
            tfo_queues = 1;
#else
            tfo_queues = conf.tfo_queues;
#endif
            if (setsockopt(fd, IPPROTO_TCP, TCP_FASTOPEN, (const void *)&tfo_queues, sizeof(tfo_queues)) != 0)
                fprintf(stderr, "[warning] failed to set TCP_FASTOPEN:%s\n", strerror(errno));
#else
            FUNC0(!"conf.tfo_queues not zero on platform without TCP_FASTOPEN");
#endif
        }
    }

    return fd;

Error:
    if (fd != -1)
        FUNC2(fd);
    FUNC4(NULL, node, "failed to listen to %s port %s:%s: %s", protocol == IPPROTO_TCP ? "TCP" : "UDP",
                               hostname != NULL ? hostname : "ANY", servname, FUNC9(errno));
    return -1;
}