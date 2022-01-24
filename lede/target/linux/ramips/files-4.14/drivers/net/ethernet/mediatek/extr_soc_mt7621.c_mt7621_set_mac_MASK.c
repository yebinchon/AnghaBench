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
struct fe_priv {int /*<<< orphan*/  page_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSW_REG_GDMA1_MAC_ADRH ; 
 int /*<<< orphan*/  GSW_REG_GDMA1_MAC_ADRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct fe_priv *priv, unsigned char *mac)
{
	unsigned long flags;

	FUNC1(&priv->page_lock, flags);
	FUNC0((mac[0] << 8) | mac[1], GSW_REG_GDMA1_MAC_ADRH);
	FUNC0((mac[2] << 24) | (mac[3] << 16) | (mac[4] << 8) | mac[5],
	       GSW_REG_GDMA1_MAC_ADRL);
	FUNC2(&priv->page_lock, flags);
}