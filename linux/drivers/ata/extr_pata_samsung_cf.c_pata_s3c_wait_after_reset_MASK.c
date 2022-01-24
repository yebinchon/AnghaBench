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
struct ata_link {int /*<<< orphan*/  ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_WAIT_AFTER_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ata_link*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct ata_link *link,
		unsigned long deadline)
{
	int rc;

	FUNC0(link->ap, ATA_WAIT_AFTER_RESET);

	/* always check readiness of the master device */
	rc = FUNC1(link, deadline);
	/* -ENODEV means the odd clown forgot the D7 pulldown resistor
	 * and TF status is 0xff, bail out on it too.
	 */
	if (rc)
		return rc;

	return 0;
}