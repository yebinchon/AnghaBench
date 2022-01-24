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
 int NUM_PORTS ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int port)
{
	if (port >= 0 && port <= NUM_PORTS)
		return FUNC0(port);
	return -1;
}