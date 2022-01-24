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
typedef  int /*<<< orphan*/  u32 ;
struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NPCM7XX_REG_TCSR0 ; 
 int /*<<< orphan*/  NPCM7XX_START_ONESHOT_Tx ; 
 int /*<<< orphan*/  NPCM7XX_Tx_OPER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct timer_of*) ; 
 struct timer_of* FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *evt)
{
	struct timer_of *to = FUNC2(evt);
	u32 val;

	val = FUNC0(FUNC1(to) + NPCM7XX_REG_TCSR0);
	val &= ~NPCM7XX_Tx_OPER;
	val |= NPCM7XX_START_ONESHOT_Tx;
	FUNC3(val, FUNC1(to) + NPCM7XX_REG_TCSR0);

	return 0;
}