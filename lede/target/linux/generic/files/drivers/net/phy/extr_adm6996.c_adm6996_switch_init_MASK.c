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
typedef  int u16 ;
struct switch_dev {char const* alias; int /*<<< orphan*/  name; TYPE_2__* ops; int /*<<< orphan*/  vlans; int /*<<< orphan*/  ports; int /*<<< orphan*/  cpu_port; } ;
struct net_device {int dummy; } ;
struct adm6996_priv {size_t model; int /*<<< orphan*/  reg_mutex; struct switch_dev dev; } ;
struct TYPE_3__ {scalar_t__ n_attr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * get_port_link; TYPE_1__ attr_port; } ;

/* Variables and functions */
 size_t ADM6996FC ; 
 size_t ADM6996L ; 
 size_t ADM6996M ; 
 int /*<<< orphan*/  ADM_CPU_PORT ; 
 int /*<<< orphan*/  ADM_NUM_PORTS ; 
 int /*<<< orphan*/  ADM_NUM_VLANS ; 
 int /*<<< orphan*/  ADM_VID_CHECK ; 
 int ENODEV ; 
 int /*<<< orphan*/ * adm6996_model_name ; 
 TYPE_2__ adm6996_ops ; 
 int /*<<< orphan*/  FUNC0 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adm6996_priv*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct switch_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct adm6996_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct adm6996_priv *priv, const char *alias, struct net_device *netdev)
{
	struct switch_dev *swdev;
	u16 test, old;

	if (!priv->model) {
		/* Detect type of chip */
		old = FUNC4(priv, ADM_VID_CHECK);
		test = old ^ (1 << 12);
		FUNC6(priv, ADM_VID_CHECK, test);
		test ^= FUNC4(priv, ADM_VID_CHECK);
		if (test & (1 << 12)) {
			/* 
			 * Bit 12 of this register is read-only. 
			 * This is the FC model. 
			 */
			priv->model = ADM6996FC;
		} else {
			/* Bit 12 is read-write. This is the M model. */
			priv->model = ADM6996M;
			FUNC6(priv, ADM_VID_CHECK, old);
		}
	}

	swdev = &priv->dev;
	swdev->name = (adm6996_model_name[priv->model]);
	swdev->cpu_port = ADM_CPU_PORT;
	swdev->ports = ADM_NUM_PORTS;
	swdev->vlans = ADM_NUM_VLANS;
	swdev->ops = &adm6996_ops;
	swdev->alias = alias;

	/* The ADM6996L connected through GPIOs does not support any switch
	   status calls */
	if (priv->model == ADM6996L) {
		adm6996_ops.attr_port.n_attr = 0;
		adm6996_ops.get_port_link = NULL;
	}

	FUNC3 ("%s: %s model PHY found.\n", alias, swdev->name);

	FUNC1(&priv->reg_mutex);
	FUNC0 (priv);
	FUNC2(&priv->reg_mutex);

	if (priv->model == ADM6996M || priv->model == ADM6996L) {
		return FUNC5(swdev, netdev);
	}

	return -ENODEV;
}