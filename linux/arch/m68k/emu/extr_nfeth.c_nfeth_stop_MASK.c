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
struct nfeth_private {int /*<<< orphan*/  ethX; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ XIF_STOP ; 
 struct nfeth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ nfEtherID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct nfeth_private *priv = FUNC0(dev);

	/* No more data */
	FUNC1(dev);

	FUNC2(nfEtherID + XIF_STOP, priv->ethX);

	return 0;
}