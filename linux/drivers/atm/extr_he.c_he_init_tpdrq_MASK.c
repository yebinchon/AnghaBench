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
struct he_tpdrq {int dummy; } ;
struct he_dev {int tpdrq_phys; int /*<<< orphan*/ * tpdrq_base; int /*<<< orphan*/ * tpdrq_head; int /*<<< orphan*/ * tpdrq_tail; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CONFIG_TPDRQ_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TPDRQ_B_H ; 
 int /*<<< orphan*/  TPDRQ_S ; 
 int /*<<< orphan*/  TPDRQ_T ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct he_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct he_dev *he_dev)
{
	he_dev->tpdrq_base = FUNC0(&he_dev->pci_dev->dev,
						CONFIG_TPDRQ_SIZE * sizeof(struct he_tpdrq),
						&he_dev->tpdrq_phys,
						GFP_KERNEL);
	if (he_dev->tpdrq_base == NULL) {
		FUNC2("failed to alloc tpdrq\n");
		return -ENOMEM;
	}

	he_dev->tpdrq_tail = he_dev->tpdrq_base;
	he_dev->tpdrq_head = he_dev->tpdrq_base;

	FUNC1(he_dev, he_dev->tpdrq_phys, TPDRQ_B_H);
	FUNC1(he_dev, 0, TPDRQ_T);	
	FUNC1(he_dev, CONFIG_TPDRQ_SIZE - 1, TPDRQ_S);

	return 0;
}