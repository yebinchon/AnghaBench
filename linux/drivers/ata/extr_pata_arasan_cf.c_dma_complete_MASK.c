#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  protocol; } ;
struct ata_queued_cmd {TYPE_3__* ap; TYPE_1__ tf; int /*<<< orphan*/  err_mask; } ;
struct arasan_cf_dev {TYPE_4__* host; int /*<<< orphan*/  irq; struct ata_queued_cmd* qc; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  eh_info; } ;
struct TYPE_7__ {TYPE_2__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct arasan_cf_dev *acdev)
{
	struct ata_queued_cmd *qc = acdev->qc;
	unsigned long flags;

	acdev->qc = NULL;
	FUNC2(acdev->irq, acdev->host);

	FUNC3(&acdev->host->lock, flags);
	if (FUNC5(qc->err_mask) && FUNC1(qc->tf.protocol))
		FUNC0(&qc->ap->link.eh_info, "DMA Failed: Timeout");
	FUNC4(&acdev->host->lock, flags);
}