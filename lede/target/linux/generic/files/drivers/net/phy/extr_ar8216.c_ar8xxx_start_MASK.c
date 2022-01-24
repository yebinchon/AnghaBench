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
struct ar8xxx_priv {int init; int /*<<< orphan*/  dev; TYPE_1__* chip; } ;
struct TYPE_2__ {int (* hw_init ) (struct ar8xxx_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ar8xxx_priv*) ; 

__attribute__((used)) static int
FUNC3(struct ar8xxx_priv *priv)
{
	int ret;

	priv->init = true;

	ret = priv->chip->hw_init(priv);
	if (ret)
		return ret;

	ret = FUNC1(&priv->dev);
	if (ret)
		return ret;

	priv->init = false;

	FUNC0(priv);

	return 0;
}