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
struct sockaddr {int ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
struct addrinfo {int ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  sa_family_t ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  hints ;
struct TYPE_2__ {int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int NET_ENABLEV4 ; 
 int NET_ENABLEV6 ; 
 int NET_PRIOV6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 struct sockaddr* FUNC1 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,struct sockaddr*,struct sockaddr**) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*,char,int) ; 
 TYPE_1__* net_enabled ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static qboolean FUNC7(const char *s, struct sockaddr *sadr, int sadr_len, sa_family_t family)
{
	struct addrinfo hints;
	struct addrinfo *res = NULL;
	struct addrinfo *search = NULL;
	struct addrinfo *hintsp;
	int retval;
	
	FUNC6(sadr, '\0', sizeof(*sadr));
	FUNC6(&hints, '\0', sizeof(hints));

	hintsp = &hints;
	hintsp->ai_family = family;
	hintsp->ai_socktype = SOCK_DGRAM;
	
	retval = FUNC4(s, NULL, hintsp, &res);

	if(!retval)
	{
		if(family == AF_UNSPEC)
		{
			// Decide here and now which protocol family to use
			if(net_enabled->integer & NET_PRIOV6)
			{
				if(net_enabled->integer & NET_ENABLEV6)
					search = FUNC1(res, AF_INET6);
				
				if(!search && (net_enabled->integer & NET_ENABLEV4))
					search = FUNC1(res, AF_INET);
			}
			else
			{
				if(net_enabled->integer & NET_ENABLEV4)
					search = FUNC1(res, AF_INET);
				
				if(!search && (net_enabled->integer & NET_ENABLEV6))
					search = FUNC1(res, AF_INET6);
			}
		}
		else
			search = FUNC1(res, family);

		if(search)
		{
			if(search->ai_addrlen > sadr_len)
				search->ai_addrlen = sadr_len;
				
			FUNC5(sadr, search->ai_addr, search->ai_addrlen);
			FUNC2(res);
			
			return qtrue;
		}
		else
			FUNC0("Sys_StringToSockaddr: Error resolving %s: No address of required type found.\n", s);
	}
	else
		FUNC0("Sys_StringToSockaddr: Error resolving %s: %s\n", s, FUNC3(retval));
	
	if(res)
		FUNC2(res);
	
	return qfalse;
}