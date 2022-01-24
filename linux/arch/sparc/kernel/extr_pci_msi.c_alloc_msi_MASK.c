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
struct pci_pbm_info {int msi_num; int msi_first; int /*<<< orphan*/  msi_bitmap; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pci_pbm_info *pbm)
{
	int i;

	for (i = 0; i < pbm->msi_num; i++) {
		if (!FUNC0(i, pbm->msi_bitmap))
			return i + pbm->msi_first;
	}

	return -ENOENT;
}