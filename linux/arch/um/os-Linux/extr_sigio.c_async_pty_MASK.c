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

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  F_SETOWN ; 
 int O_ASYNC ; 
 int O_NONBLOCK ; 
 int errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC1 () ; 

__attribute__((used)) static int FUNC2(int master, int slave)
{
	int flags;

	flags = FUNC0(master, F_GETFL);
	if (flags < 0)
		return -errno;

	if ((FUNC0(master, F_SETFL, flags | O_NONBLOCK | O_ASYNC) < 0) ||
	    (FUNC0(master, F_SETOWN, FUNC1()) < 0))
		return -errno;

	if ((FUNC0(slave, F_SETFL, flags | O_NONBLOCK) < 0))
		return -errno;

	return 0;
}