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
struct sockaddr_nl {int /*<<< orphan*/  nl_pid; int /*<<< orphan*/  nl_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  l_addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETLINK ; 
 int /*<<< orphan*/  NETLINK_ROUTE ; 
 int /*<<< orphan*/  PF_NETLINK ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_nl*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(pid_t *p_pid)
{
    struct sockaddr_nl l_addr;
    socklen_t l_len;

    int l_socket = FUNC4(PF_NETLINK, SOCK_RAW, NETLINK_ROUTE);
    if(l_socket < 0)
    {
        return -1;
    }

    FUNC3(&l_addr, 0, sizeof(l_addr));
    l_addr.nl_family = AF_NETLINK;
    if(FUNC0(l_socket, (struct sockaddr *)&l_addr, sizeof(l_addr)) < 0)
    {
        FUNC1(l_socket);
        return -1;
    }

    l_len = sizeof(l_addr);
    if(FUNC2(l_socket, (struct sockaddr *)&l_addr, &l_len) < 0)
    {
        FUNC1(l_socket);
        return -1;
    }
    *p_pid = l_addr.nl_pid;

    return l_socket;
}