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
struct sh_cmt_channel {int /*<<< orphan*/  lock; scalar_t__ match_value; scalar_t__ total_cycles; } ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 struct sh_cmt_channel* FUNC0 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct sh_cmt_channel*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static u64 FUNC5(struct clocksource *cs)
{
	struct sh_cmt_channel *ch = FUNC0(cs);
	unsigned long flags;
	u32 has_wrapped;
	u64 value;
	u32 raw;

	FUNC1(&ch->lock, flags);
	value = ch->total_cycles;
	raw = FUNC3(ch, &has_wrapped);

	if (FUNC4(has_wrapped))
		raw += ch->match_value + 1;
	FUNC2(&ch->lock, flags);

	return value + raw;
}