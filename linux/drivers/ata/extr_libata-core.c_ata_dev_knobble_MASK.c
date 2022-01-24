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
typedef  int u8 ;
struct ata_port {scalar_t__ cbl; } ;
struct ata_device {int /*<<< orphan*/  id; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;

/* Variables and functions */
 scalar_t__ ATA_CBL_SATA ; 
 int ATA_HORKAGE_BRIDGE_OK ; 
 int FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u8 FUNC2(struct ata_device *dev)
{
	struct ata_port *ap = dev->link->ap;

	if (FUNC0(dev) & ATA_HORKAGE_BRIDGE_OK)
		return 0;

	return ((ap->cbl == ATA_CBL_SATA) && (!FUNC1(dev->id)));
}