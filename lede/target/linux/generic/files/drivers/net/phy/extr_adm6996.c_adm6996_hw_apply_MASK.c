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
struct switch_dev {int dummy; } ;
struct adm6996_priv {int vlan_enabled; scalar_t__ model; int /*<<< orphan*/  reg_mutex; int /*<<< orphan*/  enable_vlan; } ;

/* Variables and functions */
 scalar_t__ ADM6996L ; 
 int /*<<< orphan*/  FUNC0 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct adm6996_priv* FUNC10 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC11(struct switch_dev *dev)
{
	struct adm6996_priv *priv = FUNC10(dev);

	FUNC9("hw_apply\n");

	FUNC7(&priv->reg_mutex);

	if (!priv->enable_vlan) {
		if (priv->vlan_enabled) {
			if (priv->model == ADM6996L)
				FUNC4(priv);
			else
				FUNC3(priv);
			priv->vlan_enabled = 0;
		}
		goto out;
	}

	if (!priv->vlan_enabled) {
		if (priv->model == ADM6996L)
			FUNC6(priv);
		else
			FUNC5(priv);
		priv->vlan_enabled = 1;
	}

	FUNC0(priv);
	if (priv->model == ADM6996L)
		FUNC2(priv);
	else
		FUNC1(priv);

out:
	FUNC8(&priv->reg_mutex);

	return 0;
}