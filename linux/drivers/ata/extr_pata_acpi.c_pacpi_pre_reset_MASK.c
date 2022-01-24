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
struct pata_acpi {int /*<<< orphan*/  gtm; } ;
struct ata_port {int /*<<< orphan*/  tdev; struct pata_acpi* private_data; } ;
struct ata_link {struct ata_port* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct ata_port*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ata_link*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ata_link *link, unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	struct pata_acpi *acpi = ap->private_data;
	if (FUNC0(&ap->tdev) == NULL || FUNC1(ap, &acpi->gtm) < 0)
		return -ENODEV;

	return FUNC2(link, deadline);
}