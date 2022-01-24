#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sh_cmt_channel {int timer_bit; TYPE_1__* cmt; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct sh_cmt_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_cmt_channel*,int) ; 

__attribute__((used)) static void FUNC4(struct sh_cmt_channel *ch, int start)
{
	unsigned long flags;
	u32 value;

	/* start stop register shared by multiple timer channels */
	FUNC0(&ch->cmt->lock, flags);
	value = FUNC2(ch);

	if (start)
		value |= 1 << ch->timer_bit;
	else
		value &= ~(1 << ch->timer_bit);

	FUNC3(ch, value);
	FUNC1(&ch->cmt->lock, flags);
}