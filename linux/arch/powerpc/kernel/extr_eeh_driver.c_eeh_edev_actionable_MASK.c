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
struct eeh_dev {int /*<<< orphan*/  pe; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ error_state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct eeh_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ pci_channel_io_perm_failure ; 

__attribute__((used)) static bool FUNC2(struct eeh_dev *edev)
{
	if (!edev->pdev)
		return false;
	if (edev->pdev->error_state == pci_channel_io_perm_failure)
		return false;
	if (FUNC0(edev))
		return false;
	if (FUNC1(edev->pe))
		return false;

	return true;
}