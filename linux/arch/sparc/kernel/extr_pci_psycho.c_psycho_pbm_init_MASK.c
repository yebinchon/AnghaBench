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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pci_pbm_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBM_CHIP_TYPE_PSYCHO ; 
 int /*<<< orphan*/  FUNC0 (struct pci_pbm_info*,struct platform_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_pbm_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_pbm_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pci_pbm_info *pbm,
			    struct platform_device *op, int is_pbm_a)
{
	FUNC0(pbm, op, "PSYCHO", PBM_CHIP_TYPE_PSYCHO);
	FUNC1(pbm, is_pbm_a);
	FUNC2(pbm, &op->dev);
}