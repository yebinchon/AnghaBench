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
struct switch_port_stats {unsigned long long tx_bytes; unsigned long long rx_bytes; } ;
struct switch_dev {int dummy; } ;
struct rtl8366_smi {int num_ports; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_mib_counter ) (struct rtl8366_smi*,int,int,unsigned long long*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct rtl8366_smi*,int,int,unsigned long long*) ; 
 int FUNC1 (struct rtl8366_smi*,int,int,unsigned long long*) ; 
 struct rtl8366_smi* FUNC2 (struct switch_dev*) ; 

int FUNC3(struct switch_dev *dev, int port,
				struct switch_port_stats *stats,
				int txb_id, int rxb_id)
{
	struct rtl8366_smi *smi = FUNC2(dev);
	unsigned long long counter = 0;
	int ret;

	if (port >= smi->num_ports)
		return -EINVAL;

	ret = smi->ops->get_mib_counter(smi, txb_id, port, &counter);
	if (ret)
		return ret;

	stats->tx_bytes = counter;

	ret = smi->ops->get_mib_counter(smi, rxb_id, port, &counter);
	if (ret)
		return ret;

	stats->rx_bytes = counter;

	return 0;
}