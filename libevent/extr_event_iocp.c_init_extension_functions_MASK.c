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
struct win32_extension_fns {void* GetAcceptExSockaddrs; void* ConnectEx; void* AcceptEx; } ;
typedef  scalar_t__ SOCKET ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EVUTIL_INVALID_SOCKET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  WSAID_ACCEPTEX ; 
 int /*<<< orphan*/  WSAID_CONNECTEX ; 
 int /*<<< orphan*/  WSAID_GETACCEPTEXSOCKADDRS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int extension_fns_initialized ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct win32_extension_fns *ext)
{
	const GUID acceptex = WSAID_ACCEPTEX;
	const GUID connectex = WSAID_CONNECTEX;
	const GUID getacceptexsockaddrs = WSAID_GETACCEPTEXSOCKADDRS;
	SOCKET s = FUNC2(AF_INET, SOCK_STREAM, 0);
	if (s == EVUTIL_INVALID_SOCKET)
		return;
	ext->AcceptEx = FUNC1(s, &acceptex);
	ext->ConnectEx = FUNC1(s, &connectex);
	ext->GetAcceptExSockaddrs = FUNC1(s,
	    &getacceptexsockaddrs);
	FUNC0(s);

	extension_fns_initialized = 1;
}