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
struct tpm_nsc_priv {scalar_t__ base; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NSC_COMMAND ; 
 int /*<<< orphan*/  NSC_COMMAND_CANCEL ; 
 struct tpm_nsc_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct tpm_chip *chip)
{
	struct tpm_nsc_priv *priv = FUNC0(&chip->dev);

	FUNC1(NSC_COMMAND_CANCEL, priv->base + NSC_COMMAND);
}