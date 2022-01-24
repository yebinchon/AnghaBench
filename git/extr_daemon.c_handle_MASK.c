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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct child_process {int in; int /*<<< orphan*/  out; int /*<<< orphan*/  argv; int /*<<< orphan*/  env_array; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct child_process*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ cld_argv ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ live_children ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ max_connections ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct child_process*) ; 

__attribute__((used)) static void FUNC11(int incoming, struct sockaddr *addr, socklen_t addrlen)
{
	struct child_process cld = CHILD_PROCESS_INIT;

	if (max_connections && live_children >= max_connections) {
		FUNC6();
		FUNC9(1);  /* give it some time to die */
		FUNC2();
		if (live_children >= max_connections) {
			FUNC3(incoming);
			FUNC7("Too many children, dropping connection");
			return;
		}
	}

	if (addr->sa_family == AF_INET) {
		char buf[128] = "";
		struct sockaddr_in *sin_addr = (void *) addr;
		FUNC5(addr->sa_family, &sin_addr->sin_addr, buf, sizeof(buf));
		FUNC1(&cld.env_array, "REMOTE_ADDR=%s", buf);
		FUNC1(&cld.env_array, "REMOTE_PORT=%d",
				 FUNC8(sin_addr->sin_port));
#ifndef NO_IPV6
	} else if (addr->sa_family == AF_INET6) {
		char buf[128] = "";
		struct sockaddr_in6 *sin6_addr = (void *) addr;
		FUNC5(AF_INET6, &sin6_addr->sin6_addr, buf, sizeof(buf));
		FUNC1(&cld.env_array, "REMOTE_ADDR=[%s]", buf);
		FUNC1(&cld.env_array, "REMOTE_PORT=%d",
				 FUNC8(sin6_addr->sin6_port));
#endif
	}

	cld.argv = cld_argv.argv;
	cld.in = incoming;
	cld.out = FUNC4(incoming);

	if (FUNC10(&cld))
		FUNC7("unable to fork");
	else
		FUNC0(&cld, addr, addrlen);
}