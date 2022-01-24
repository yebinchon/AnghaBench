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
typedef  int u32 ;
struct acpi_port_info {int end; int start; scalar_t__ osi_dependency; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_io_address ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_IO ; 
 int /*<<< orphan*/  ACPI_DB_VALUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int ACPI_PORT_INFO_ENTRIES ; 
 int ACPI_UINT16_MAX ; 
 int /*<<< orphan*/  AE_AML_ILLEGAL_ADDRESS ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ acpi_gbl_osi_data ; 
 struct acpi_port_info* acpi_protected_ports ; 
 int /*<<< orphan*/  hw_validate_io_request ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC6(acpi_io_address address, u32 bit_width)
{
	u32 i;
	u32 byte_width;
	acpi_io_address last_address;
	const struct acpi_port_info *port_info;

	FUNC4(hw_validate_io_request);

	/* Supported widths are 8/16/32 */

	if ((bit_width != 8) && (bit_width != 16) && (bit_width != 32)) {
		FUNC2((AE_INFO,
			    "Bad BitWidth parameter: %8.8X", bit_width));
		FUNC5(AE_BAD_PARAMETER);
	}

	port_info = acpi_protected_ports;
	byte_width = FUNC1(bit_width);
	last_address = address + byte_width - 1;

	FUNC0((ACPI_DB_IO,
			  "Address %8.8X%8.8X LastAddress %8.8X%8.8X Length %X",
			  FUNC3(address),
			  FUNC3(last_address), byte_width));

	/* Maximum 16-bit address in I/O space */

	if (last_address > ACPI_UINT16_MAX) {
		FUNC2((AE_INFO,
			    "Illegal I/O port address/length above 64K: %8.8X%8.8X/0x%X",
			    FUNC3(address), byte_width));
		FUNC5(AE_LIMIT);
	}

	/* Exit if requested address is not within the protected port table */

	if (address > acpi_protected_ports[ACPI_PORT_INFO_ENTRIES - 1].end) {
		FUNC5(AE_OK);
	}

	/* Check request against the list of protected I/O ports */

	for (i = 0; i < ACPI_PORT_INFO_ENTRIES; i++, port_info++) {
		/*
		 * Check if the requested address range will write to a reserved
		 * port. There are four cases to consider:
		 *
		 * 1) Address range is contained completely in the port address range
		 * 2) Address range overlaps port range at the port range start
		 * 3) Address range overlaps port range at the port range end
		 * 4) Address range completely encompasses the port range
		 */
		if ((address <= port_info->end)
		    && (last_address >= port_info->start)) {

			/* Port illegality may depend on the _OSI calls made by the BIOS */

			if (acpi_gbl_osi_data >= port_info->osi_dependency) {
				FUNC0((ACPI_DB_VALUES,
						  "Denied AML access to port 0x%8.8X%8.8X/%X (%s 0x%.4X-0x%.4X)\n",
						  FUNC3(address),
						  byte_width, port_info->name,
						  port_info->start,
						  port_info->end));

				FUNC5(AE_AML_ILLEGAL_ADDRESS);
			}
		}

		/* Finished if address range ends before the end of this port */

		if (last_address <= port_info->end) {
			break;
		}
	}

	FUNC5(AE_OK);
}