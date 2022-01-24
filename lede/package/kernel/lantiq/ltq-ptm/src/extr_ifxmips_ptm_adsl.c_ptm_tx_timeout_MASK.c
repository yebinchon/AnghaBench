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
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device**) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_IGU1_IER ; 
 struct net_device** g_net_dev ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
    int ndev;

    for ( ndev = 0; ndev < FUNC0(g_net_dev) && g_net_dev[ndev] != dev; ndev++ );
    FUNC1(ndev >= 0 && ndev < FUNC0(g_net_dev), "ndev = %d (wrong value)", ndev);

    /*  disable TX irq, release skb when sending new packet */
    FUNC2(1 << (ndev + 16), 0, MBOX_IGU1_IER);

    /*  wake up TX queue    */
    FUNC3(dev);

    return;
}