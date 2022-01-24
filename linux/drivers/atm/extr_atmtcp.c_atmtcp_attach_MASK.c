#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct atm_vcc {int /*<<< orphan*/ * stats; struct atm_dev* dev_data; int /*<<< orphan*/  flags; TYPE_2__* dev; } ;
struct atm_dev {int number; int /*<<< orphan*/ * ops; } ;
struct TYPE_6__ {struct atm_vcc* vcc; } ;
struct TYPE_4__ {int /*<<< orphan*/  aal5; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_META ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int EBUSY ; 
 int EMEDIUMTYPE ; 
 TYPE_3__* FUNC0 (struct atm_dev*) ; 
 struct atm_dev* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_vcc*) ; 
 TYPE_2__ atmtcp_control_dev ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct atm_dev**) ; 
 int /*<<< orphan*/  atmtcp_v_dev_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct atm_vcc *vcc,int itf)
{
	struct atm_dev *dev;

	dev = NULL;
	if (itf != -1) dev = FUNC1(itf);
	if (dev) {
		if (dev->ops != &atmtcp_v_dev_ops) {
			FUNC2(dev);
			return -EMEDIUMTYPE;
		}
		if (FUNC0(dev)->vcc) {
			FUNC2(dev);
			return -EBUSY;
		}
	}
	else {
		int error;

		error = FUNC4(itf,0,&dev);
		if (error) return error;
	}
	FUNC0(dev)->vcc = vcc;
	vcc->dev = &atmtcp_control_dev;
	FUNC7(FUNC6(vcc));
	FUNC5(ATM_VF_META,&vcc->flags);
	FUNC5(ATM_VF_READY,&vcc->flags);
	vcc->dev_data = dev;
	(void) FUNC3(vcc); /* @@@ losing AAL in transit ... */
	vcc->stats = &atmtcp_control_dev.stats.aal5;
	return dev->number;
}