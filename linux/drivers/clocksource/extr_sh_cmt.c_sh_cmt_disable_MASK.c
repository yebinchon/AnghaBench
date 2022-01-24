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
struct sh_cmt_channel {TYPE_2__* cmt; } ;
struct TYPE_4__ {TYPE_1__* pdev; int /*<<< orphan*/  clk; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_cmt_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_cmt_channel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sh_cmt_channel *ch)
{
	/* disable channel */
	FUNC3(ch, 0);

	/* disable interrupts in CMT block */
	FUNC4(ch, 0);

	/* stop clock */
	FUNC0(ch->cmt->clk);

	FUNC1(&ch->cmt->pdev->dev, false);
	FUNC2(&ch->cmt->pdev->dev);
}