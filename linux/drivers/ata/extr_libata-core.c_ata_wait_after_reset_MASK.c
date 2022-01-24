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
 int FUNC1 (struct ata_link*,unsigned long,int (*) (struct ata_link*)) ; 

int FUNC2(struct ata_link *link, unsigned long deadline,
				int (*check_ready)(struct ata_link *link))
{
	FUNC0(link->ap, ATA_WAIT_AFTER_RESET);

	return FUNC1(link, deadline, check_ready);
}