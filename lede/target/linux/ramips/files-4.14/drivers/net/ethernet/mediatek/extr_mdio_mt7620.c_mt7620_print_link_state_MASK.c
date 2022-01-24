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
struct fe_priv {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 

void FUNC2(struct fe_priv *priv, int port, int link,
			     int speed, int duplex)
{
	if (link)
		FUNC1(priv->netdev, "port %d link up (%sMbps/%s duplex)\n",
			    port, FUNC0(speed),
			    (duplex) ? "Full" : "Half");
	else
		FUNC1(priv->netdev, "port %d link down\n", port);
}