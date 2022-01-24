#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ar8xxx_priv {TYPE_1__* phy; int /*<<< orphan*/  chip_data; } ;
struct ar8327_data {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  platform_data; scalar_t__ of_node; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;
struct TYPE_4__ {TYPE_2__ mdio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ar8xxx_priv*,scalar_t__) ; 
 int FUNC1 (struct ar8xxx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct ar8xxx_priv *priv)
{
	int ret;

	priv->chip_data = FUNC4(sizeof(struct ar8327_data), GFP_KERNEL);
	if (!priv->chip_data)
		return -ENOMEM;

	if (priv->phy->mdio.dev.of_node)
		ret = FUNC0(priv, priv->phy->mdio.dev.of_node);
	else
		ret = FUNC1(priv,
					     priv->phy->mdio.dev.platform_data);

	if (ret)
		return ret;

	FUNC2(priv);

	FUNC3(priv);

	return 0;
}