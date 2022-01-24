#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_cmt_channel {TYPE_2__* cmt; int /*<<< orphan*/  cs_enabled; } ;
struct clocksource {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_CLOCKSOURCE ; 
 struct sh_cmt_channel* FUNC0 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_cmt_channel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct clocksource *cs)
{
	struct sh_cmt_channel *ch = FUNC0(cs);

	if (!ch->cs_enabled)
		return;

	FUNC1(&ch->cmt->pdev->dev);
	FUNC2(ch, FLAG_CLOCKSOURCE);
}