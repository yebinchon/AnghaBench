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
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct net_device* FUNC2 (struct fe_priv*) ; 

void FUNC3(struct fe_priv *priv)
{
	struct net_device *dev = FUNC2(priv);

	FUNC1((dev->features & NETIF_F_IP_CSUM));
	FUNC0((dev->features & NETIF_F_RXCSUM));
}