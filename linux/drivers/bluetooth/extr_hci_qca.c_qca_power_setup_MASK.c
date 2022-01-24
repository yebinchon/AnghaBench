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
struct regulator_bulk_data {int /*<<< orphan*/  consumer; } ;
struct qca_vreg {int /*<<< orphan*/  name; } ;
struct qca_serdev {TYPE_2__* bt_power; } ;
struct hci_uart {int /*<<< orphan*/  serdev; } ;
struct TYPE_4__ {int vregs_on; TYPE_1__* vreg_data; struct regulator_bulk_data* vreg_bulk; } ;
struct TYPE_3__ {int num_vregs; struct qca_vreg* vregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct qca_vreg,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qca_vreg,int /*<<< orphan*/ ) ; 
 struct qca_serdev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hci_uart *hu, bool on)
{
	struct qca_vreg *vregs;
	struct regulator_bulk_data *vreg_bulk;
	struct qca_serdev *qcadev;
	int i, num_vregs, ret = 0;

	qcadev = FUNC4(hu->serdev);
	if (!qcadev || !qcadev->bt_power || !qcadev->bt_power->vreg_data ||
	    !qcadev->bt_power->vreg_bulk)
		return -EINVAL;

	vregs = qcadev->bt_power->vreg_data->vregs;
	vreg_bulk = qcadev->bt_power->vreg_bulk;
	num_vregs = qcadev->bt_power->vreg_data->num_vregs;
	FUNC0("on: %d", on);
	if (on && !qcadev->bt_power->vregs_on) {
		for (i = 0; i < num_vregs; i++) {
			ret = FUNC3(vregs[i],
						   vreg_bulk[i].consumer);
			if (ret)
				break;
		}

		if (ret) {
			FUNC1("failed to enable regulator:%s", vregs[i].name);
			/* turn off regulators which are enabled */
			for (i = i - 1; i >= 0; i--)
				FUNC2(vregs[i],
						      vreg_bulk[i].consumer);
		} else {
			qcadev->bt_power->vregs_on = true;
		}
	} else if (!on && qcadev->bt_power->vregs_on) {
		/* turn off regulator in reverse order */
		i = qcadev->bt_power->vreg_data->num_vregs - 1;
		for ( ; i >= 0; i--)
			FUNC2(vregs[i], vreg_bulk[i].consumer);

		qcadev->bt_power->vregs_on = false;
	}

	return ret;
}