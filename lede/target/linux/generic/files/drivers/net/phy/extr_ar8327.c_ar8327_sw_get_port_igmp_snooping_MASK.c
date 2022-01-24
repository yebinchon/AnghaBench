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
struct TYPE_2__ {int /*<<< orphan*/  i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int /*<<< orphan*/  reg_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ar8xxx_priv* FUNC3 (struct switch_dev*) ; 

int
FUNC4(struct switch_dev *dev,
				 const struct switch_attr *attr,
				 struct switch_val *val)
{
	struct ar8xxx_priv *priv = FUNC3(dev);
	int port = val->port_vlan;

	if (port >= dev->ports)
		return -EINVAL;

	FUNC1(&priv->reg_mutex);
	val->value.i = FUNC0(priv, port);
	FUNC2(&priv->reg_mutex);

	return 0;
}