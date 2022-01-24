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
struct adm6996_priv {scalar_t__ model; int* vlan_id; scalar_t__* vlan_tagged; scalar_t__* vlan_table; scalar_t__* pvid; scalar_t__ vlan_enabled; scalar_t__ enable_vlan; } ;

/* Variables and functions */
 scalar_t__ ADM6996FC ; 
 scalar_t__ ADM6996L ; 
 scalar_t__ ADM6996M ; 
 int ADM_NUM_PORTS ; 
 int ADM_NUM_VLANS ; 
 int ADM_PHYCFG_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ADM_PHY_PORTS ; 
 int ADM_PORTCFG_CPU ; 
 int ADM_PORTCFG_INIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADM_VLAN_PRIOMAP ; 
 int /*<<< orphan*/  FUNC2 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct adm6996_priv*) ; 
 int /*<<< orphan*/ * adm_portcfg ; 
 int /*<<< orphan*/  FUNC5 (struct adm6996_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6 (struct adm6996_priv *priv)
{
	int i;

	/* initialize port and vlan settings */
	for (i = 0; i < ADM_NUM_PORTS - 1; i++) {
		FUNC5(priv, adm_portcfg[i], ADM_PORTCFG_INIT |
			FUNC1(0));
	}
	FUNC5(priv, adm_portcfg[5], ADM_PORTCFG_CPU);

	if (priv->model == ADM6996M || priv->model == ADM6996FC) {
		/* reset all PHY ports */
		for (i = 0; i < ADM_PHY_PORTS; i++) {
			FUNC5(priv, FUNC0(i), ADM_PHYCFG_INIT);
		}
	}

	priv->enable_vlan = 0;
	priv->vlan_enabled = 0;

	for (i = 0; i < ADM_NUM_PORTS; i++) {
		priv->pvid[i] = 0;
	}

	for (i = 0; i < ADM_NUM_VLANS; i++) {
		priv->vlan_id[i] = i;
		priv->vlan_table[i] = 0;
		priv->vlan_tagged[i] = 0;
	}

	if (priv->model == ADM6996M) {
		/* Clear VLAN priority map so prio's are unused */
		FUNC5 (priv, ADM_VLAN_PRIOMAP, 0);

		FUNC3(priv);
		FUNC2(priv);
	} else if (priv->model == ADM6996L) {
		/* Clear VLAN priority map so prio's are unused */
		FUNC5 (priv, ADM_VLAN_PRIOMAP, 0);

		FUNC4(priv);
		FUNC2(priv);
	}
}