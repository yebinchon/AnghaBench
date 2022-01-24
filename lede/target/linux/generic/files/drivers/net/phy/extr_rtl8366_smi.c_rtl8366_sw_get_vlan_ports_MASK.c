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
struct TYPE_4__ {struct switch_port* ports; } ;
struct switch_val {scalar_t__ len; TYPE_2__ value; int /*<<< orphan*/  port_vlan; } ;
struct switch_port {int id; int flags; } ;
struct switch_dev {int dummy; } ;
struct rtl8366_vlan_4k {int member; int untag; } ;
struct rtl8366_smi {int num_ports; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_vlan_4k ) (struct rtl8366_smi*,int /*<<< orphan*/ ,struct rtl8366_vlan_4k*) ;int /*<<< orphan*/  (* is_vlan_valid ) (struct rtl8366_smi*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int SWITCH_PORT_FLAG_TAGGED ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8366_smi*,int /*<<< orphan*/ ,struct rtl8366_vlan_4k*) ; 
 struct rtl8366_smi* FUNC3 (struct switch_dev*) ; 

int FUNC4(struct switch_dev *dev, struct switch_val *val)
{
	struct rtl8366_smi *smi = FUNC3(dev);
	struct switch_port *port;
	struct rtl8366_vlan_4k vlan4k;
	int i;

	if (!smi->ops->is_vlan_valid(smi, val->port_vlan))
		return -EINVAL;

	smi->ops->get_vlan_4k(smi, val->port_vlan, &vlan4k);

	port = &val->value.ports[0];
	val->len = 0;
	for (i = 0; i < smi->num_ports; i++) {
		if (!(vlan4k.member & FUNC0(i)))
			continue;

		port->id = i;
		port->flags = (vlan4k.untag & FUNC0(i)) ?
					0 : FUNC0(SWITCH_PORT_FLAG_TAGGED);
		val->len++;
		port++;
	}
	return 0;
}