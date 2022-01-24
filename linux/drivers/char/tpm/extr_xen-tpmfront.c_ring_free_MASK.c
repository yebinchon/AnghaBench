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
struct tpm_private {scalar_t__ irq; scalar_t__ shr; scalar_t__ ring_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_private*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct tpm_private*) ; 

__attribute__((used)) static void FUNC4(struct tpm_private *priv)
{
	if (!priv)
		return;

	if (priv->ring_ref)
		FUNC1(priv->ring_ref, 0,
				(unsigned long)priv->shr);
	else
		FUNC0((unsigned long)priv->shr);

	if (priv->irq)
		FUNC3(priv->irq, priv);

	FUNC2(priv);
}