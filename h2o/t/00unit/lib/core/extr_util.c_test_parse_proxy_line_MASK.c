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
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
typedef  int ssize_t ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,int,void*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    char in[256];
    struct sockaddr_storage sa;
    socklen_t salen;
    ssize_t ret;

    FUNC6(in, "");
    ret = FUNC5(in, FUNC7(in), (void *)&sa, &salen);
    FUNC4(ret == -2);

    FUNC6(in, "PROXY TCP4 192.168.0.1 192.168.0.11 56324 443\r\nabc");
    ret = FUNC5(in, FUNC7(in), (void *)&sa, &salen);
    FUNC4(ret == FUNC7(in) - 3);
    FUNC4(salen == sizeof(struct sockaddr_in));
    FUNC4(sa.ss_family == AF_INET);
    FUNC4(((struct sockaddr_in *)&sa)->sin_addr.s_addr == FUNC1(0xc0a80001));
    FUNC4(((struct sockaddr_in *)&sa)->sin_port == FUNC2(56324));

    FUNC6(in, "PROXY TCP4 192.168.0.1 192.168.0.11 56324 443\r");
    ret = FUNC5(in, FUNC7(in), (void *)&sa, &salen);
    FUNC4(ret == -2);

    FUNC6(in, "PROXY TCP5");
    ret = FUNC5(in, FUNC7(in), (void *)&sa, &salen);
    FUNC4(ret == -1);

    FUNC6(in, "PROXY UNKNOWN");
    ret = FUNC5(in, FUNC7(in), (void *)&sa, &salen);
    FUNC4(ret == -2);

    FUNC6(in, "PROXY UNKNOWN\r\nabc");
    ret = FUNC5(in, FUNC7(in), (void *)&sa, &salen);
    FUNC4(ret == FUNC7(in) - 3);
    FUNC4(salen == 0);

    FUNC6(in, "PROXY TCP6 ::1 ::1 56324 443\r\n");
    ret = FUNC5(in, FUNC7(in), (void *)&sa, &salen);
    FUNC4(ret == FUNC7(in));
    FUNC4(salen == sizeof(struct sockaddr_in6));
    FUNC4(sa.ss_family == AF_INET6);
    FUNC4(FUNC3(&((struct sockaddr_in6 *)&sa)->sin6_addr, FUNC0("\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\1")) == 0);
    FUNC4(((struct sockaddr_in6 *)&sa)->sin6_port == FUNC2(56324));
}