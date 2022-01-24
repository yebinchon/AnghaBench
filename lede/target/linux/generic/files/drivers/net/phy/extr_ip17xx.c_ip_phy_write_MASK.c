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
typedef  int /*<<< orphan*/  u16 ;
struct ip17xx_state {int /*<<< orphan*/  mii_bus; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct ip17xx_state *state, int port, int reg, u16 val)
{
	int err;

#ifdef DUMP_MII_IO
	pr_debug("IP17xx: Write MII(%d,%d) <- %04x\n", port, reg, val);
#endif
	err = FUNC0(state->mii_bus, port, reg, val);
	if (err < 0)
		FUNC2("IP17xx: Unable to write MII register %d,%d: error %d\n", port, reg, -err);
	return err;
}