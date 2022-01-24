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
struct zpci_dev {scalar_t__ domain; } ;

/* Variables and functions */
 scalar_t__ ZPCI_NR_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zpci_domain ; 
 int /*<<< orphan*/  zpci_domain_lock ; 

__attribute__((used)) static void FUNC3(struct zpci_dev *zdev)
{
	if (zdev->domain >= ZPCI_NR_DEVICES)
		return;

	FUNC1(&zpci_domain_lock);
	FUNC0(zdev->domain, zpci_domain);
	FUNC2(&zpci_domain_lock);
}