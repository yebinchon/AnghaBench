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
typedef  int /*<<< orphan*/  one ;
typedef  scalar_t__ int_t ;
typedef  scalar_t__ fd_t ;
typedef  int /*<<< orphan*/  dword_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET_ ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_RAW ; 
 int /*<<< orphan*/  IP_STRIPHDR ; 
 int /*<<< orphan*/  SOCK_DGRAM_ ; 
 int /*<<< orphan*/  SOCK_RAW_ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ _EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int,int /*<<< orphan*/ ) ; 

int_t FUNC8(dword_t domain, dword_t type, dword_t protocol) {
    FUNC0("socket(%d, %d, %d)", domain, type, protocol);
    int real_domain = FUNC4(domain);
    if (real_domain < 0)
        return _EINVAL;
    int real_type = FUNC6(type, protocol);
    if (real_type < 0)
        return _EINVAL;

    // this hack makes mtr work
    if (type == SOCK_RAW_ && protocol == IPPROTO_RAW)
        protocol = IPPROTO_ICMP;

    int sock = FUNC7(real_domain, real_type, protocol);
    if (sock < 0)
        return FUNC2();

#ifdef __APPLE__
    if (domain == AF_INET_ && type == SOCK_DGRAM_) {
        // in some cases, such as ICMP, datagram sockets on mac can default to
        // including the IP header like raw sockets
        int one = 1;
        setsockopt(sock, IPPROTO_IP, IP_STRIPHDR, &one, sizeof(one));
    }
#endif

    fd_t f = FUNC5(sock, domain, type, protocol);
    if (f < 0)
        FUNC1(sock);
    return f;
}