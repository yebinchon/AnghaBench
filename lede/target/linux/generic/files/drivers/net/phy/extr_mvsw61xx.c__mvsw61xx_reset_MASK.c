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
typedef  scalar_t__ u16 ;
struct switch_dev {int ports; int vlans; } ;
struct mvsw61xx_state {scalar_t__ model; int mirror_rx; int mirror_tx; scalar_t__ monitor_port; scalar_t__ source_port; scalar_t__ vlan_enabled; TYPE_2__* vlans; TYPE_1__* ports; } ;
struct TYPE_4__ {int port_based; scalar_t__ port_sstate; scalar_t__ port_mode; scalar_t__ vid; scalar_t__ mask; } ;
struct TYPE_3__ {scalar_t__ pvid; scalar_t__ mask; scalar_t__ qmode; scalar_t__ fdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC ; 
 int BMCR_ANENABLE ; 
 int BMCR_FULLDPLX ; 
 int BMCR_RESET ; 
 int BMCR_SPEED1000 ; 
 int /*<<< orphan*/  CONTROL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_MV_SPEC_CTRL ; 
 scalar_t__ MV_CONTROL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MV_IDENT_VALUE_6176 ; 
 scalar_t__ MV_PHYCTL_FC_DISABLE ; 
 scalar_t__ MV_PHYCTL_FC_MASK ; 
 scalar_t__ MV_PORTCTRL_FORWARDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ MV_PORT_STATUS_CMODE_1000BASE_X ; 
 scalar_t__ MV_PORT_STATUS_CMODE_100BASE_X ; 
 scalar_t__ MV_PORT_STATUS_CMODE_MASK ; 
 scalar_t__ MV_PORT_STATUS_CMODE_SGMII ; 
 int MV_SPEC_DOWNSHIFT_COUNTER ; 
 int MV_SPEC_ENERGY_DETECT ; 
 int MV_SPEC_MDI_CROSS_AUTO ; 
 int /*<<< orphan*/  PHYCTL ; 
 int /*<<< orphan*/  STATUS ; 
 struct mvsw61xx_state* FUNC2 (struct switch_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct switch_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct switch_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct switch_dev*) ; 
 scalar_t__ FUNC6 (struct switch_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct switch_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct switch_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct switch_dev *dev, bool full)
{
	struct mvsw61xx_state *state = FUNC2(dev);
	int i;
	u16 reg;

	/* Disable all ports before reset */
	for (i = 0; i < dev->ports; i++) {
		reg = FUNC7(dev, FUNC1(CONTROL, i)) &
			~MV_PORTCTRL_FORWARDING;
		FUNC8(dev, FUNC1(CONTROL, i), reg);
	}

	reg = FUNC7(dev, FUNC0(CONTROL)) | MV_CONTROL_RESET;

	FUNC8(dev, FUNC0(CONTROL), reg);
	if (FUNC6(dev, FUNC0(CONTROL),
				MV_CONTROL_RESET, 0) < 0)
		return -ETIMEDOUT;

	for (i = 0; i < dev->ports; i++) {
		state->ports[i].fdb = 0;
		state->ports[i].qmode = 0;
		state->ports[i].mask = 0;
		state->ports[i].pvid = 0;

		/* Force flow control off */
		reg = FUNC7(dev, FUNC1(PHYCTL, i)) & ~MV_PHYCTL_FC_MASK;
		reg |= MV_PHYCTL_FC_DISABLE;
		FUNC8(dev, FUNC1(PHYCTL, i), reg);

		/* Set port association vector */
		FUNC8(dev, FUNC1(ASSOC, i), (1 << i));

		/* power up phys */
		if (full && i < 5) {
			FUNC4(dev, i, MII_MV_SPEC_CTRL,
					    MV_SPEC_MDI_CROSS_AUTO |
					    MV_SPEC_ENERGY_DETECT |
					    MV_SPEC_DOWNSHIFT_COUNTER);
			FUNC4(dev, i, MII_BMCR, BMCR_RESET |
					    BMCR_ANENABLE | BMCR_FULLDPLX |
					    BMCR_SPEED1000);
		}

		/* enable SerDes if necessary */
		if (full && i >= 5 && state->model == MV_IDENT_VALUE_6176) {
			u16 sts = FUNC7(dev, FUNC1(STATUS, i));
			u16 mode = sts & MV_PORT_STATUS_CMODE_MASK;

			if (mode == MV_PORT_STATUS_CMODE_100BASE_X ||
			    mode == MV_PORT_STATUS_CMODE_1000BASE_X ||
			    mode == MV_PORT_STATUS_CMODE_SGMII) {
				FUNC3(dev);
			}
		}
	}

	for (i = 0; i < dev->vlans; i++) {
		state->vlans[i].port_based = false;
		state->vlans[i].mask = 0;
		state->vlans[i].vid = 0;
		state->vlans[i].port_mode = 0;
		state->vlans[i].port_sstate = 0;
	}

	state->vlan_enabled = 0;

	state->mirror_rx = false;
	state->mirror_tx = false;
	state->source_port = 0;
	state->monitor_port = 0;

	FUNC5(dev);

	/* Re-enable ports */
	for (i = 0; i < dev->ports; i++) {
		reg = FUNC7(dev, FUNC1(CONTROL, i)) |
			MV_PORTCTRL_FORWARDING;
		FUNC8(dev, FUNC1(CONTROL, i), reg);
	}

	return 0;
}