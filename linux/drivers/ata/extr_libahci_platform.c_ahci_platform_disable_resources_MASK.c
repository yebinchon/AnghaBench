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
struct ahci_host_priv {int /*<<< orphan*/  rsts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ahci_host_priv *hpriv)
{
	FUNC1(hpriv);

	FUNC3(hpriv->rsts);

	FUNC0(hpriv);

	FUNC2(hpriv);
}