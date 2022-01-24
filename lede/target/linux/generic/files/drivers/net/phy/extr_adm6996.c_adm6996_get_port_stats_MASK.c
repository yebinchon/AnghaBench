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
struct switch_port_stats {int tx_bytes; int rx_bytes; } ;
struct switch_dev {int dummy; } ;
struct adm6996_priv {int /*<<< orphan*/  mib_lock; } ;
struct TYPE_2__ {scalar_t__ offset; } ;

/* Variables and functions */
 int ADM6996_MIB_RXB_ID ; 
 int ADM6996_MIB_TXB_ID ; 
 int ADM_NUM_PORTS ; 
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 TYPE_1__* adm6996_mibs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct adm6996_priv*,scalar_t__) ; 
 struct adm6996_priv* FUNC4 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC5(struct switch_dev *dev, int port,
			struct switch_port_stats *stats)
{
	struct adm6996_priv *priv = FUNC4(dev);
	int id;
	u32 reg = 0;

	if (port >= ADM_NUM_PORTS)
		return -EINVAL;

	FUNC1(&priv->mib_lock);

	id = ADM6996_MIB_TXB_ID;
	reg = FUNC3(priv, adm6996_mibs[id].offset + FUNC0(port));
	reg += FUNC3(priv, adm6996_mibs[id].offset + FUNC0(port) + 1) << 16;
	stats->tx_bytes = reg;

	id = ADM6996_MIB_RXB_ID;
	reg = FUNC3(priv, adm6996_mibs[id].offset + FUNC0(port));
	reg += FUNC3(priv, adm6996_mibs[id].offset + FUNC0(port) + 1) << 16;
	stats->rx_bytes = reg;

	FUNC2(&priv->mib_lock);

	return 0;
}