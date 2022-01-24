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
struct ip17xx_state {int /*<<< orphan*/  mii_bus; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct ip17xx_state *state, int port, int reg)
{
	int val = FUNC0(state->mii_bus, port, reg);
	if (val < 0)
		FUNC2("IP17xx: Unable to get MII register %d,%d: error %d\n", port, reg, -val);
#ifdef DUMP_MII_IO
	else
		pr_debug("IP17xx: Read MII(%d,%d) -> %04x\n", port, reg, val);
#endif
	return val;
}