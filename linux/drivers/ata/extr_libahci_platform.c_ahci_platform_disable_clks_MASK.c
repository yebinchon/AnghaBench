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
struct ahci_host_priv {scalar_t__* clks; } ;

/* Variables and functions */
 int AHCI_MAX_CLKS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(struct ahci_host_priv *hpriv)
{
	int c;

	for (c = AHCI_MAX_CLKS - 1; c >= 0; c--)
		if (hpriv->clks[c])
			FUNC0(hpriv->clks[c]);
}