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
struct sata_oxnas_host_priv {scalar_t__ core_base; } ;
struct ata_host {struct sata_oxnas_host_priv* private_data; } ;

/* Variables and functions */
 scalar_t__ DEVICE_CONTROL ; 
 int DEVICE_CONTROL_ATA_ERR_OVERRIDE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OXNASSATA_NOTRAID ; 
 scalar_t__ PORT_ERROR_MASK ; 
 int /*<<< orphan*/  UNKNOWN_MODE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC4(struct ata_host *ah, int force,
					  int no_microcode)
{
	struct sata_oxnas_host_priv *hd = ah->private_data;

	FUNC0("ENTER\n");
	if (no_microcode) {
		u32 reg;

		FUNC3(ah, UNKNOWN_MODE, force);
		reg = FUNC1(hd->core_base + DEVICE_CONTROL);
		reg |= DEVICE_CONTROL_ATA_ERR_OVERRIDE;
		FUNC2(reg, hd->core_base + DEVICE_CONTROL);
	} else {
		/* JBOD uCode */
		FUNC3(ah, OXNASSATA_NOTRAID, force);
		/* Turn the work around off as it may have been left on by any
		 * HW-RAID code that we've been working with */
		FUNC2(0x0, hd->core_base + PORT_ERROR_MASK);
	}
}