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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct adm6996_priv {int* vlan_id; scalar_t__* vlan_table; scalar_t__* vlan_tagged; } ;

/* Variables and functions */
 int ADM_NUM_VLANS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int ADM_VLAN_FILT_VALID ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct adm6996_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct adm6996_priv *priv)
{
	u8 ports, tagged;
	u16 vid, reg;
	int i;

	for (i = 0; i < ADM_NUM_VLANS; i++) {
		vid = priv->vlan_id[i];
		ports = priv->vlan_table[i];
		tagged = priv->vlan_tagged[i];

		if (ports == 0) {
			/* Disable VLAN entry */
			FUNC5(priv, FUNC0(i), 0);
			FUNC5(priv, FUNC1(i), 0);
			continue;
		}

		reg = FUNC2(ports);
		reg |= FUNC3(tagged);
		FUNC5(priv, FUNC1(i), reg);
		reg = ADM_VLAN_FILT_VALID | FUNC4(vid);
		FUNC5(priv, FUNC0(i), reg);
	}
}