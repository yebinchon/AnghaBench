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
struct TYPE_2__ {int /*<<< orphan*/  (* event_handler ) (TYPE_1__*) ;} ;
struct sh_mtu2_channel {TYPE_1__ ced; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TSR ; 
 int /*<<< orphan*/  TSR_TGFA ; 
 int /*<<< orphan*/  FUNC0 (struct sh_mtu2_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mtu2_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct sh_mtu2_channel *ch = dev_id;

	/* acknowledge interrupt */
	FUNC0(ch, TSR);
	FUNC1(ch, TSR, ~TSR_TGFA);

	/* notify clockevent layer */
	ch->ced.event_handler(&ch->ced);
	return IRQ_HANDLED;
}