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
typedef  int u8 ;
struct ata_link {int saved_scontrol; int hw_sata_spd_limit; int sata_spd_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCR_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct ata_link*) ; 
 int FUNC1 (struct ata_link*,int /*<<< orphan*/ ,int*) ; 

int FUNC2(struct ata_link *link)
{
	u8 spd;
	int rc;

	rc = FUNC1(link, SCR_CONTROL, &link->saved_scontrol);
	if (rc)
		return rc;

	spd = (link->saved_scontrol >> 4) & 0xf;
	if (spd)
		link->hw_sata_spd_limit &= (1 << spd) - 1;

	FUNC0(link);

	link->sata_spd_limit = link->hw_sata_spd_limit;

	return 0;
}