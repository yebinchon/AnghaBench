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
typedef  int u8 ;
struct TYPE_2__ {int cpu_port; } ;
struct b53_device {int enabled_ports; TYPE_1__ sw_dev; } ;

/* Variables and functions */
 int B53_CPU_PORT ; 
 int /*<<< orphan*/  B53_CTRL_PAGE ; 
 int FUNC0 (int) ; 
 int B53_PORT_OVERRIDE_CTRL ; 
 int FUNC1 (int) ; 
 int EINVAL ; 
 int GMII_PO_EN ; 
 int GMII_PO_LINK ; 
 int GMII_PO_RX_FLOW ; 
 int GMII_PO_SPEED_2000M ; 
 int GMII_PO_TX_FLOW ; 
 int PORT_OVERRIDE_EN ; 
 int PORT_OVERRIDE_LINK ; 
 int PORT_OVERRIDE_RV_MII_25 ; 
 int PORT_OVERRIDE_RX_FLOW ; 
 int PORT_OVERRIDE_SPEED_2000M ; 
 int PORT_OVERRIDE_TX_FLOW ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (struct b53_device*) ; 
 scalar_t__ FUNC5 (struct b53_device*) ; 
 scalar_t__ FUNC6 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct b53_device *dev)
{
	u8 cpu_port = dev->sw_dev.cpu_port;

	/* configure MII port if necessary */
	if (FUNC6(dev)) {
		u8 mii_port_override;

		FUNC2(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
			  &mii_port_override);
		/* reverse mii needs to be enabled */
		if (!(mii_port_override & PORT_OVERRIDE_RV_MII_25)) {
			FUNC3(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
				   mii_port_override | PORT_OVERRIDE_RV_MII_25);
			FUNC2(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
				  &mii_port_override);

			if (!(mii_port_override & PORT_OVERRIDE_RV_MII_25)) {
				FUNC7("Failed to enable reverse MII mode\n");
				return -EINVAL;
			}
		}
	} else if (FUNC5(dev) && cpu_port == B53_CPU_PORT) {
		u8 mii_port_override;

		FUNC2(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
			  &mii_port_override);
		FUNC3(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
			   mii_port_override | PORT_OVERRIDE_EN |
			   PORT_OVERRIDE_LINK);

		/* BCM47189 has another interface connected to the port 5 */
		if (dev->enabled_ports & FUNC1(5)) {
			u8 po_reg = FUNC0(5);
			u8 gmii_po;

			FUNC2(dev, B53_CTRL_PAGE, po_reg, &gmii_po);
			gmii_po |= GMII_PO_LINK |
				   GMII_PO_RX_FLOW |
				   GMII_PO_TX_FLOW |
				   GMII_PO_EN;
			FUNC3(dev, B53_CTRL_PAGE, po_reg, gmii_po);
		}
	} else if (FUNC4(dev)) {
		if (cpu_port == 8) {
			u8 mii_port_override;

			FUNC2(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
				  &mii_port_override);
			mii_port_override |= PORT_OVERRIDE_LINK |
					     PORT_OVERRIDE_RX_FLOW |
					     PORT_OVERRIDE_TX_FLOW |
					     PORT_OVERRIDE_SPEED_2000M |
					     PORT_OVERRIDE_EN;
			FUNC3(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
				   mii_port_override);

			/* TODO: Ports 5 & 7 require some extra handling */
		} else {
			u8 po_reg = FUNC0(cpu_port);
			u8 gmii_po;

			FUNC2(dev, B53_CTRL_PAGE, po_reg, &gmii_po);
			gmii_po |= GMII_PO_LINK |
				   GMII_PO_RX_FLOW |
				   GMII_PO_TX_FLOW |
				   GMII_PO_EN |
				   GMII_PO_SPEED_2000M;
			FUNC3(dev, B53_CTRL_PAGE, po_reg, gmii_po);
		}
	}

	return 0;
}