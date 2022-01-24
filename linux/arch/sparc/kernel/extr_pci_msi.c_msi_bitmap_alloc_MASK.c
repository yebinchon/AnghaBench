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
struct pci_pbm_info {unsigned long msi_num; int /*<<< orphan*/  msi_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pci_pbm_info *pbm)
{
	unsigned long size, bits_per_ulong;

	bits_per_ulong = sizeof(unsigned long) * 8;
	size = (pbm->msi_num + (bits_per_ulong - 1)) & ~(bits_per_ulong - 1);
	size /= 8;
	FUNC0(size % sizeof(unsigned long));

	pbm->msi_bitmap = FUNC1(size, GFP_KERNEL);
	if (!pbm->msi_bitmap)
		return -ENOMEM;

	return 0;
}