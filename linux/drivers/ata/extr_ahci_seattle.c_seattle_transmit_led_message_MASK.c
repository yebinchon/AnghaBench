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
typedef  int u32 ;
struct seattle_plat_data {int /*<<< orphan*/  sgpio_ctrl; } ;
struct ata_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  port_no; struct ahci_port_priv* private_data; TYPE_1__* host; } ;
struct ahci_port_priv {struct ahci_em_priv* em_priv; } ;
struct ahci_host_priv {struct seattle_plat_data* plat_data; } ;
struct ahci_em_priv {int led_state; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ACTIVITY_MASK ; 
 int /*<<< orphan*/  EINVAL ; 
 int EM_MAX_SLOTS ; 
 int EM_MSG_LED_PMP_SLOT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FAULT_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int LOCATE_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC7(struct ata_port *ap, u32 state,
					    ssize_t size)
{
	struct ahci_host_priv *hpriv = ap->host->private_data;
	struct ahci_port_priv *pp = ap->private_data;
	struct seattle_plat_data *plat_data = hpriv->plat_data;
	unsigned long flags;
	int pmp;
	struct ahci_em_priv *emp;
	u32 val;

	/* get the slot number from the message */
	pmp = (state & EM_MSG_LED_PMP_SLOT) >> 8;
	if (pmp >= EM_MAX_SLOTS)
		return -EINVAL;
	emp = &pp->em_priv[pmp];

	val = FUNC3(plat_data->sgpio_ctrl);
	if (state & ACTIVITY_MASK)
		val |= 1 << FUNC0((ap->port_no));
	else
		val &= ~(1 << FUNC0((ap->port_no)));

	if (state & LOCATE_MASK)
		val |= 1 << FUNC2((ap->port_no));
	else
		val &= ~(1 << FUNC2((ap->port_no)));

	if (state & FAULT_MASK)
		val |= 1 << FUNC1((ap->port_no));
	else
		val &= ~(1 << FUNC1((ap->port_no)));

	FUNC4(val, plat_data->sgpio_ctrl);

	FUNC5(ap->lock, flags);

	/* save off new led state for port/slot */
	emp->led_state = state;

	FUNC6(ap->lock, flags);

	return size;
}