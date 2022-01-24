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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 size_t SIZE_MAX ; 
 scalar_t__ FUNC0 (struct sockaddr*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*,char*,int,int,int,int) ; 
 size_t FUNC3 (char*) ; 

size_t FUNC4(struct sockaddr *sa, socklen_t salen, char *buf)
{
    if (sa->sa_family == AF_INET) {
        /* fast path for IPv4 addresses */
        struct sockaddr_in *sin = (void *)sa;
        uint32_t addr;
        addr = FUNC1(sin->sin_addr.s_addr);
        return FUNC2(buf, "%d.%d.%d.%d", addr >> 24, (addr >> 16) & 255, (addr >> 8) & 255, addr & 255);
    }

    if (FUNC0(sa, salen, buf, NI_MAXHOST, NULL, 0, NI_NUMERICHOST) != 0)
        return SIZE_MAX;
    return FUNC3(buf);
}