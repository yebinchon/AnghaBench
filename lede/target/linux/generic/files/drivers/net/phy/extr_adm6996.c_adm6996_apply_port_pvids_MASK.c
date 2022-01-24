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
typedef  int u16 ;
struct adm6996_priv {scalar_t__ model; int tagged_ports; int /*<<< orphan*/ * pvid; } ;

/* Variables and functions */
 scalar_t__ ADM6996L ; 
 int ADM_NUM_PORTS ; 
 int /*<<< orphan*/  ADM_OTBE_P2_PVID ; 
 int /*<<< orphan*/  ADM_P0_PVID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADM_P1_PVID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ADM_P2_PVID_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADM_P3_P4_PVID ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADM_P5_PVID ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int ADM_PORTCFG_PVID_MASK ; 
 int /*<<< orphan*/ * adm_portcfg ; 
 int FUNC7 (struct adm6996_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adm6996_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct adm6996_priv *priv)
{
	u16 reg;
	int i;

	for (i = 0; i < ADM_NUM_PORTS; i++) {
		reg = FUNC7(priv, adm_portcfg[i]);
		reg &= ~(ADM_PORTCFG_PVID_MASK);
		reg |= FUNC6(priv->pvid[i]);
		if (priv->model == ADM6996L) {
			if (priv->tagged_ports & (1 << i))
				reg |= (1 << 4);
			else
				reg &= ~(1 << 4);
		}
		FUNC8(priv, adm_portcfg[i], reg);
	}

	FUNC8(priv, ADM_P0_PVID, FUNC0(priv->pvid[0]));
	FUNC8(priv, ADM_P1_PVID, FUNC1(priv->pvid[1]));
	reg = FUNC7(priv, ADM_OTBE_P2_PVID);
	reg &= ~(ADM_P2_PVID_MASK);
	reg |= FUNC2(priv->pvid[2]);
	FUNC8(priv, ADM_OTBE_P2_PVID, reg);
	reg = FUNC3(priv->pvid[3]);
	reg |= FUNC4(priv->pvid[4]);
	FUNC8(priv, ADM_P3_P4_PVID, reg);
	reg = FUNC7(priv, ADM_P5_PVID);
	reg &= ~(ADM_P2_PVID_MASK);
	reg |= FUNC5(priv->pvid[5]);
	FUNC8(priv, ADM_P5_PVID, reg);
}