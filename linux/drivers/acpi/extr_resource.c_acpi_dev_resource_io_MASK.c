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
struct resource {int flags; } ;
struct acpi_resource_io {int /*<<< orphan*/  io_decode; int /*<<< orphan*/  address_length; int /*<<< orphan*/  minimum; } ;
struct acpi_resource_fixed_io {int /*<<< orphan*/  address_length; int /*<<< orphan*/  address; } ;
struct TYPE_2__ {struct acpi_resource_fixed_io fixed_io; struct acpi_resource_io io; } ;
struct acpi_resource {int type; TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DECODE_10 ; 
#define  ACPI_RESOURCE_TYPE_FIXED_IO 129 
#define  ACPI_RESOURCE_TYPE_IO 128 
 int IORESOURCE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(struct acpi_resource *ares, struct resource *res)
{
	struct acpi_resource_io *io;
	struct acpi_resource_fixed_io *fixed_io;

	switch (ares->type) {
	case ACPI_RESOURCE_TYPE_IO:
		io = &ares->data.io;
		FUNC0(res, io->minimum,
					io->address_length,
					io->io_decode);
		break;
	case ACPI_RESOURCE_TYPE_FIXED_IO:
		fixed_io = &ares->data.fixed_io;
		FUNC0(res, fixed_io->address,
					fixed_io->address_length,
					ACPI_DECODE_10);
		break;
	default:
		res->flags = 0;
		return false;
	}

	return !(res->flags & IORESOURCE_DISABLED);
}