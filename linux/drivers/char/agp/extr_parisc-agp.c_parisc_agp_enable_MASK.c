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
struct agp_bridge_data {int dummy; } ;
struct _parisc_agp_info {scalar_t__ lba_cap_offset; scalar_t__ lba_regs; } ;

/* Variables and functions */
 int AGP8X_MODE ; 
 scalar_t__ PCI_AGP_COMMAND ; 
 scalar_t__ PCI_AGP_STATUS ; 
 int FUNC0 (struct agp_bridge_data*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct _parisc_agp_info parisc_agp_info ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct agp_bridge_data *bridge, u32 mode)
{
	struct _parisc_agp_info *info = &parisc_agp_info;
	u32 command;

	command = FUNC2(info->lba_regs + info->lba_cap_offset + PCI_AGP_STATUS);

	command = FUNC0(bridge, mode, command);
	command |= 0x00000100;

	FUNC3(command, info->lba_regs + info->lba_cap_offset + PCI_AGP_COMMAND);

	FUNC1(command, (mode & AGP8X_MODE) != 0);
}