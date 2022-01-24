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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct fe_priv {TYPE_1__* soc; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_mac ) (struct fe_priv*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct fe_priv*,void*) ; 
 struct fe_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct fe_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *p)
{
	int ret = FUNC0(dev, p);

	if (!ret) {
		struct fe_priv *priv = FUNC2(dev);

		if (priv->soc->set_mac)
			priv->soc->set_mac(priv, dev->dev_addr);
		else
			FUNC1(priv, p);
	}

	return ret;
}