#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {char* s; } ;
struct switch_val {int port_vlan; int len; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct adm6996_priv {char* buf; int /*<<< orphan*/  mib_lock; } ;
struct TYPE_5__ {char* name; scalar_t__ offset; } ;

/* Variables and functions */
 int ADM_NUM_PORTS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int EINVAL ; 
 TYPE_2__* adm6996_mibs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct adm6996_priv*,scalar_t__) ; 
 scalar_t__ FUNC5 (char*,int,char*,...) ; 
 struct adm6996_priv* FUNC6 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC7(struct switch_dev *dev,
		       const struct switch_attr *attr,
		       struct switch_val *val)
{
	struct adm6996_priv *priv = FUNC6(dev);
	int port;
	char *buf = priv->buf;
	int i, len = 0;
	u32 reg = 0;

	port = val->port_vlan;
	if (port >= ADM_NUM_PORTS)
		return -EINVAL;

	FUNC2(&priv->mib_lock);

	len += FUNC5(buf + len, sizeof(priv->buf) - len,
			"Port %d MIB counters\n",
			port);

	for (i = 0; i < FUNC1(adm6996_mibs); i++) {
		reg = FUNC4(priv, adm6996_mibs[i].offset + FUNC0(port));
		reg += FUNC4(priv, adm6996_mibs[i].offset + FUNC0(port) + 1) << 16;
		len += FUNC5(buf + len, sizeof(priv->buf) - len,
				"%-12s: %u\n",
				adm6996_mibs[i].name,
				reg);
	}

	FUNC3(&priv->mib_lock);

	val->value.s = buf;
	val->len = len;

	return 0;
}