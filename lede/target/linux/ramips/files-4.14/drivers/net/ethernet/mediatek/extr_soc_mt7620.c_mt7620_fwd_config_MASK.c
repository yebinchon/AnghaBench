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
struct net_device {int features; } ;
struct fe_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7620A_GDMA1_FWD_CFG ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct net_device* FUNC4 (struct fe_priv*) ; 

__attribute__((used)) static int FUNC5(struct fe_priv *priv)
{
	struct net_device *dev = FUNC4(priv);

	FUNC1(FUNC0(MT7620A_GDMA1_FWD_CFG) & ~7, MT7620A_GDMA1_FWD_CFG);

	FUNC3((dev->features & NETIF_F_IP_CSUM));
	FUNC2((dev->features & NETIF_F_RXCSUM));

	return 0;
}