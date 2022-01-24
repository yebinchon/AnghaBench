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
struct sh_tmu_channel {int cs_enabled; } ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct sh_tmu_channel* FUNC1 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_tmu_channel*) ; 

__attribute__((used)) static void FUNC3(struct clocksource *cs)
{
	struct sh_tmu_channel *ch = FUNC1(cs);

	if (FUNC0(!ch->cs_enabled))
		return;

	FUNC2(ch);
	ch->cs_enabled = false;
}