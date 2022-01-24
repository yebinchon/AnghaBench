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
struct sh_cmt_channel {int cs_enabled; } ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_CLOCKSOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sh_cmt_channel* FUNC1 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_cmt_channel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct clocksource *cs)
{
	struct sh_cmt_channel *ch = FUNC1(cs);

	FUNC0(!ch->cs_enabled);

	FUNC2(ch, FLAG_CLOCKSOURCE);
	ch->cs_enabled = false;
}