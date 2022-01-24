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
struct acpi_ec {int reference_count; int /*<<< orphan*/  flags; int /*<<< orphan*/  gpe; int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ADR_SPACE_EC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_GPE_EDGE_TRIGGERED ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 scalar_t__ AE_NOT_FOUND ; 
 int /*<<< orphan*/  EC_FLAGS_EC_HANDLER_INSTALLED ; 
 int /*<<< orphan*/  EC_FLAGS_EVT_HANDLER_INSTALLED ; 
 int /*<<< orphan*/  EC_FLAGS_GPE_HANDLER_INSTALLED ; 
 int /*<<< orphan*/  EC_FLAGS_STARTED ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_ec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_ec*) ; 
 int /*<<< orphan*/  acpi_ec_gpe_handler ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_ec*) ; 
 int /*<<< orphan*/  acpi_ec_register_query_methods ; 
 int /*<<< orphan*/  acpi_ec_space_handler ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_ec*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_ec*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct acpi_ec*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_ec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct acpi_ec *ec, bool handle_events)
{
	acpi_status status;

	FUNC6(ec, false);

	if (!FUNC13(EC_FLAGS_EC_HANDLER_INSTALLED, &ec->flags)) {
		FUNC4(ec);
		status = FUNC8(ec->handle,
							    ACPI_ADR_SPACE_EC,
							    &acpi_ec_space_handler,
							    NULL, ec);
		if (FUNC0(status)) {
			if (status == AE_NOT_FOUND) {
				/*
				 * Maybe OS fails in evaluating the _REG
				 * object. The AE_NOT_FOUND error will be
				 * ignored and OS * continue to initialize
				 * EC.
				 */
				FUNC11("Fail in evaluating the _REG object"
					" of EC device. Broken bios is suspected.\n");
			} else {
				FUNC7(ec, false);
				return -ENODEV;
			}
		}
		FUNC12(EC_FLAGS_EC_HANDLER_INSTALLED, &ec->flags);
	}

	if (!handle_events)
		return 0;

	if (!FUNC13(EC_FLAGS_EVT_HANDLER_INSTALLED, &ec->flags)) {
		/* Find and register all query methods */
		FUNC10(ACPI_TYPE_METHOD, ec->handle, 1,
				    acpi_ec_register_query_methods,
				    NULL, ec, NULL);
		FUNC12(EC_FLAGS_EVT_HANDLER_INSTALLED, &ec->flags);
	}
	if (!FUNC13(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags)) {
		status = FUNC9(NULL, ec->gpe,
					  ACPI_GPE_EDGE_TRIGGERED,
					  &acpi_ec_gpe_handler, ec);
		/* This is not fatal as we can poll EC events */
		if (FUNC1(status)) {
			FUNC12(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags);
			FUNC5(ec);
			if (FUNC13(EC_FLAGS_STARTED, &ec->flags) &&
			    ec->reference_count >= 1)
				FUNC3(ec, true);
		}
	}
	/* EC is fully operational, allow queries */
	FUNC2(ec);

	return 0;
}