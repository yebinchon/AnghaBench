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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 scalar_t__ TCN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ m68328_tick_cnt ; 

__attribute__((used)) static u64 FUNC2(struct clocksource *cs)
{
	unsigned long flags;
	u32 cycles;

	FUNC1(flags);
	cycles = m68328_tick_cnt + TCN;
	FUNC0(flags);

	return cycles;
}