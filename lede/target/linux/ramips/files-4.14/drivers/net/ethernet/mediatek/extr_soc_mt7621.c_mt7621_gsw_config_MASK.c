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
struct fe_priv {scalar_t__ mii_bus; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct fe_priv *priv)
{
	if (priv->mii_bus &&  FUNC0(priv->mii_bus, 0x1f))
		FUNC1(priv->dev, NULL, priv->mii_bus, 1);

	return 0;
}