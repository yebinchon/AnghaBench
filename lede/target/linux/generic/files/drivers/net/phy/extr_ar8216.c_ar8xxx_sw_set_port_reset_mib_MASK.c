#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct switch_val {int port_vlan; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int /*<<< orphan*/  mib_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*) ; 
 int FUNC1 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ar8xxx_priv* FUNC5 (struct switch_dev*) ; 

int
FUNC6(struct switch_dev *dev,
			     const struct switch_attr *attr,
			     struct switch_val *val)
{
	struct ar8xxx_priv *priv = FUNC5(dev);
	int port;
	int ret;

	if (!FUNC0(priv))
		return -EOPNOTSUPP;

	port = val->port_vlan;
	if (port >= dev->ports)
		return -EINVAL;

	FUNC3(&priv->mib_lock);
	ret = FUNC1(priv);
	if (ret)
		goto unlock;

	FUNC2(priv, port, true);

	ret = 0;

unlock:
	FUNC4(&priv->mib_lock);
	return ret;
}