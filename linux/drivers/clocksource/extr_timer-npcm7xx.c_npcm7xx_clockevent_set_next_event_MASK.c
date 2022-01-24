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
typedef  unsigned long u32 ;
struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NPCM7XX_REG_TCSR0 ; 
 scalar_t__ NPCM7XX_REG_TICR0 ; 
 unsigned long NPCM7XX_START_Tx ; 
 unsigned long FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct timer_of*) ; 
 struct timer_of* FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(unsigned long evt,
		struct clock_event_device *clk)
{
	struct timer_of *to = FUNC2(clk);
	u32 val;

	FUNC3(evt, FUNC1(to) + NPCM7XX_REG_TICR0);
	val = FUNC0(FUNC1(to) + NPCM7XX_REG_TCSR0);
	val |= NPCM7XX_START_Tx;
	FUNC3(val, FUNC1(to) + NPCM7XX_REG_TCSR0);

	return 0;
}