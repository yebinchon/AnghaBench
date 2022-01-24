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
struct acpi_ec {int /*<<< orphan*/  flags; int /*<<< orphan*/  gpe; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ADR_SPACE_EC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_FLAGS_EC_HANDLER_INSTALLED ; 
 int /*<<< orphan*/  EC_FLAGS_EVT_HANDLER_INSTALLED ; 
 int /*<<< orphan*/  EC_FLAGS_GPE_HANDLER_INSTALLED ; 
 int /*<<< orphan*/  acpi_ec_gpe_handler ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_ec_space_handler ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ec*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct acpi_ec *ec)
{
	if (FUNC7(EC_FLAGS_EC_HANDLER_INSTALLED, &ec->flags)) {
		if (FUNC0(FUNC3(ec->handle,
					ACPI_ADR_SPACE_EC, &acpi_ec_space_handler)))
			FUNC6("failed to remove space handler\n");
		FUNC5(EC_FLAGS_EC_HANDLER_INSTALLED, &ec->flags);
	}

	/*
	 * Stops handling the EC transactions after removing the operation
	 * region handler. This is required because _REG(DISCONNECT)
	 * invoked during the removal can result in new EC transactions.
	 *
	 * Flushes the EC requests and thus disables the GPE before
	 * removing the GPE handler. This is required by the current ACPICA
	 * GPE core. ACPICA GPE core will automatically disable a GPE when
	 * it is indicated but there is no way to handle it. So the drivers
	 * must disable the GPEs prior to removing the GPE handlers.
	 */
	FUNC2(ec, false);

	if (FUNC7(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags)) {
		if (FUNC0(FUNC4(NULL, ec->gpe,
					&acpi_ec_gpe_handler)))
			FUNC6("failed to remove gpe handler\n");
		FUNC5(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags);
	}
	if (FUNC7(EC_FLAGS_EVT_HANDLER_INSTALLED, &ec->flags)) {
		FUNC1(ec, true, 0);
		FUNC5(EC_FLAGS_EVT_HANDLER_INSTALLED, &ec->flags);
	}
}