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
typedef  scalar_t__ evutil_socket_t ;
typedef  int /*<<< orphan*/  ev_intptr_t ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int /*<<< orphan*/  fired ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(evutil_socket_t fd, short which, void *arg)
{
	char ch;
	evutil_socket_t sock = (evutil_socket_t)(ev_intptr_t)arg;

	(void) FUNC1(fd, &ch, sizeof(ch), 0);
	if (sock >= 0) {
		if (FUNC2(sock, "e", 1, 0) < 0)
			FUNC0("send");
	}
	fired++;
}