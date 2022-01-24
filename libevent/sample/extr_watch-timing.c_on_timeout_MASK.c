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

/* Variables and functions */
 int /*<<< orphan*/  delays ; 
 int /*<<< orphan*/  durations ; 
 double FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double,double,double) ; 

__attribute__((used)) static void
FUNC2(evutil_socket_t fd, short events, void *arg)
{
	FUNC1("durations: [p50 = %fs, p95 = %fs], delays: [p50 = %fs, p95 = %fs]\n",
		FUNC0(durations, 0.5),
		FUNC0(durations, 0.95),
		FUNC0(delays, 0.5),
		FUNC0(delays, 0.95));
}