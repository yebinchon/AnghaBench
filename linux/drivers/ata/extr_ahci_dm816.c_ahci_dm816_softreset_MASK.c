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
struct ata_link {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ahci_check_ready ; 
 int FUNC0 (struct ata_link*,unsigned int*,int,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ata_link*) ; 

__attribute__((used)) static int FUNC2(struct ata_link *link,
				unsigned int *class, unsigned long deadline)
{
	int pmp, ret;

	pmp = FUNC1(link);

	/*
	 * There's an issue with the SATA controller on DM816 SoC: if we
	 * enable Port Multiplier support, but the drive is connected directly
	 * to the board, it can't be detected. As a workaround: if PMP is
	 * enabled, we first call ahci_do_softreset() and pass it the result of
	 * sata_srst_pmp(). If this call fails, we retry with pmp = 0.
	 */
	ret = FUNC0(link, class, pmp, deadline, ahci_check_ready);
	if (pmp && ret == -EBUSY)
		return FUNC0(link, class, 0,
					 deadline, ahci_check_ready);

	return ret;
}