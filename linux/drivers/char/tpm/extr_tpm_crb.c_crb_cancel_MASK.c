#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct crb_priv {scalar_t__ sm; TYPE_1__* regs_t; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl_cancel; } ;

/* Variables and functions */
 scalar_t__ ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD ; 
 scalar_t__ ACPI_TPM2_START_METHOD ; 
 int /*<<< orphan*/  CRB_CANCEL_INVOKE ; 
 scalar_t__ FUNC0 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct crb_priv* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tpm_chip *chip)
{
	struct crb_priv *priv = FUNC2(&chip->dev);

	FUNC3(CRB_CANCEL_INVOKE, &priv->regs_t->ctrl_cancel);

	if (((priv->sm == ACPI_TPM2_START_METHOD) ||
	    (priv->sm == ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD)) &&
	     FUNC0(chip))
		FUNC1(&chip->dev, "ACPI Start failed\n");
}