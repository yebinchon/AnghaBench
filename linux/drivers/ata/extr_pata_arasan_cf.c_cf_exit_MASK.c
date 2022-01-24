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
struct arasan_cf_dev {int /*<<< orphan*/  clk; TYPE_1__* host; scalar_t__ vbase; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CFHOST_ENB ; 
 scalar_t__ OP_MODE ; 
 int /*<<< orphan*/  TRUE_IDE_IRQS ; 
 int /*<<< orphan*/  FUNC0 (struct arasan_cf_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct arasan_cf_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct arasan_cf_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct arasan_cf_dev *acdev)
{
	unsigned long flags;

	FUNC5(&acdev->host->lock, flags);
	FUNC1(acdev, 0);
	FUNC2(acdev, TRUE_IDE_IRQS, 0);
	FUNC0(acdev);
	FUNC7(FUNC4(acdev->vbase + OP_MODE) & ~CFHOST_ENB,
			acdev->vbase + OP_MODE);
	FUNC6(&acdev->host->lock, flags);
	FUNC3(acdev->clk);
}