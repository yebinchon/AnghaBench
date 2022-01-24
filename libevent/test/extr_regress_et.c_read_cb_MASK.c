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
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 short EV_ET ; 
 int /*<<< orphan*/  called ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int was_et ; 

__attribute__((used)) static void
FUNC2(evutil_socket_t fd, short event, void *arg)
{
	char buf;
	int len;

	len = FUNC1(fd, &buf, sizeof(buf), 0);

	called++;
	if (event & EV_ET)
		was_et = 1;

	if (!len)
		FUNC0(arg);
}