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
struct scq_info {scalar_t__ paddr; int /*<<< orphan*/ * last; int /*<<< orphan*/ * next; int /*<<< orphan*/ * base; int /*<<< orphan*/  pending; int /*<<< orphan*/  transmit; int /*<<< orphan*/  skblock; int /*<<< orphan*/  lock; int /*<<< orphan*/  used; } ;
struct idt77252_dev {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SCQ_ENTRIES ; 
 int /*<<< orphan*/  SCQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scq_info*) ; 
 struct scq_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct scq_info *
FUNC7(struct idt77252_dev *card, int class)
{
	struct scq_info *scq;

	scq = FUNC4(sizeof(struct scq_info), GFP_KERNEL);
	if (!scq)
		return NULL;
	scq->base = FUNC2(&card->pcidev->dev, SCQ_SIZE,
				       &scq->paddr, GFP_KERNEL);
	if (scq->base == NULL) {
		FUNC3(scq);
		return NULL;
	}

	scq->next = scq->base;
	scq->last = scq->base + (SCQ_ENTRIES - 1);
	FUNC1(&scq->used, 0);

	FUNC6(&scq->lock);
	FUNC6(&scq->skblock);

	FUNC5(&scq->transmit);
	FUNC5(&scq->pending);

	FUNC0("idt77252: SCQ: base 0x%p, next 0x%p, last 0x%p, paddr %08llx\n",
		 scq->base, scq->next, scq->last, (unsigned long long)scq->paddr);

	return scq;
}