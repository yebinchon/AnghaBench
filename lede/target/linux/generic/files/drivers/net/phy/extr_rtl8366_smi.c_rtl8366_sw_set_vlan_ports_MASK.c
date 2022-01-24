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
typedef  int u32 ;
struct TYPE_4__ {struct switch_port* ports; } ;
struct switch_val {int len; int /*<<< orphan*/  port_vlan; TYPE_2__ value; } ;
struct switch_port {int flags; int /*<<< orphan*/  id; } ;
struct switch_dev {int dummy; } ;
struct rtl8366_smi {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* is_vlan_valid ) (struct rtl8366_smi*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SWITCH_PORT_FLAG_TAGGED ; 
 int FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtl8366_smi*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8366_smi*,int /*<<< orphan*/ ) ; 
 struct rtl8366_smi* FUNC5 (struct switch_dev*) ; 

int FUNC6(struct switch_dev *dev, struct switch_val *val)
{
	struct rtl8366_smi *smi = FUNC5(dev);
	struct switch_port *port;
	u32 member = 0;
	u32 untag = 0;
	int err;
	int i;

	if (!smi->ops->is_vlan_valid(smi, val->port_vlan))
		return -EINVAL;

	port = &val->value.ports[0];
	for (i = 0; i < val->len; i++, port++) {
		int pvid = 0;
		member |= FUNC0(port->id);

		if (!(port->flags & FUNC0(SWITCH_PORT_FLAG_TAGGED)))
			untag |= FUNC0(port->id);

		/*
		 * To ensure that we have a valid MC entry for this VLAN,
		 * initialize the port VLAN ID here.
		 */
		err = FUNC1(smi, port->id, &pvid);
		if (err < 0)
			return err;
		if (pvid == 0) {
			err = FUNC2(smi, port->id, val->port_vlan);
			if (err < 0)
				return err;
		}
	}

	return FUNC3(smi, val->port_vlan, member, untag, 0);
}