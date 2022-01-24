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
struct adm6996_priv {int* pvid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct adm6996_priv* FUNC1 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC2(struct switch_dev *dev, int port, int *vlan)
{
	struct adm6996_priv *priv = FUNC1(dev);

	FUNC0("get_pvid port %d\n", port);
	*vlan = priv->pvid[port];

	return 0;
}