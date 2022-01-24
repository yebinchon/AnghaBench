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
struct ifaddrs {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  NetlinkList ;

/* Variables and functions */
 int /*<<< orphan*/  RTM_GETADDR ; 
 int /*<<< orphan*/  RTM_GETLINK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifaddrs**,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifaddrs**) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ifaddrs **ifap)
{
    int l_socket;
    int l_result;
    int l_numLinks;
    pid_t l_pid;
    NetlinkList *l_linkResults;
    NetlinkList *l_addrResults;

    if(!ifap)
    {
        return -1;
    }
    *ifap = NULL;

    l_socket = FUNC5(&l_pid);
    if(l_socket < 0)
    {
        return -1;
    }

    l_linkResults = FUNC2(l_socket, RTM_GETLINK, l_pid);
    if(!l_linkResults)
    {
        FUNC0(l_socket);
        return -1;
    }

    l_addrResults = FUNC2(l_socket, RTM_GETADDR, l_pid);
    if(!l_addrResults)
    {
        FUNC0(l_socket);
        FUNC1(l_linkResults);
        return -1;
    }

    l_result = 0;
    l_numLinks = FUNC4(l_socket, l_pid, l_linkResults, ifap);
    if(l_numLinks == -1 || FUNC3(l_socket, l_pid, l_addrResults, ifap, l_numLinks) == -1)
    {
        l_result = -1;
    }

    FUNC1(l_linkResults);
    FUNC1(l_addrResults);
    FUNC0(l_socket);
    return l_result;
}