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
struct TYPE_8__ {struct atm_vcc* atmvcc; int /*<<< orphan*/  buf; } ;
struct TYPE_7__ {struct atm_vcc* atmvcc; int /*<<< orphan*/  buf; } ;
struct lanai_vcc {scalar_t__ nref; TYPE_4__ tx; int /*<<< orphan*/ * vbase; TYPE_3__ rx; } ;
struct lanai_dev {scalar_t__ naal0; int /*<<< orphan*/  pci; struct atm_vcc* cbrvcc; } ;
struct TYPE_6__ {scalar_t__ aal; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/ * dev_data; TYPE_2__ qos; TYPE_1__* dev; } ;
struct TYPE_5__ {scalar_t__ dev_data; } ;

/* Variables and functions */
 scalar_t__ ATM_AAL0 ; 
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_PARTIAL ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  FUNC0 (struct lanai_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lanai_dev*,struct lanai_vcc*) ; 
 int /*<<< orphan*/  FUNC3 (struct lanai_vcc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lanai_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct lanai_vcc*) ; 
 int /*<<< orphan*/  FUNC7 (struct lanai_dev*,struct lanai_vcc*) ; 

__attribute__((used)) static void FUNC8(struct atm_vcc *atmvcc)
{
	struct lanai_vcc *lvcc = (struct lanai_vcc *) atmvcc->dev_data;
	struct lanai_dev *lanai = (struct lanai_dev *) atmvcc->dev->dev_data;
	if (lvcc == NULL)
		return;
	FUNC1(ATM_VF_READY, &atmvcc->flags);
	FUNC1(ATM_VF_PARTIAL, &atmvcc->flags);
	if (lvcc->rx.atmvcc == atmvcc) {
		FUNC6(lvcc);
		if (atmvcc->qos.aal == ATM_AAL0) {
			if (--lanai->naal0 <= 0)
				FUNC0(lanai);
		} else
			FUNC4(&lvcc->rx.buf, lanai->pci);
		lvcc->rx.atmvcc = NULL;
	}
	if (lvcc->tx.atmvcc == atmvcc) {
		if (atmvcc == lanai->cbrvcc) {
			if (lvcc->vbase != NULL)
				FUNC5(lanai);
			lanai->cbrvcc = NULL;
		}
		FUNC7(lanai, lvcc);
		FUNC4(&lvcc->tx.buf, lanai->pci);
		lvcc->tx.atmvcc = NULL;
	}
	if (--lvcc->nref == 0) {
		FUNC2(lanai, lvcc);
		FUNC3(lvcc);
	}
	atmvcc->dev_data = NULL;
	FUNC1(ATM_VF_ADDR, &atmvcc->flags);
}