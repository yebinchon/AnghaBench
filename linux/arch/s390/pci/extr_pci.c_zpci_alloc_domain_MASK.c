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
typedef  scalar_t__ u16 ;
struct zpci_dev {scalar_t__ domain; scalar_t__ uid; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOSPC ; 
 scalar_t__ ZPCI_NR_DEVICES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zpci_domain ; 
 int /*<<< orphan*/  zpci_domain_lock ; 
 scalar_t__ zpci_unique_uid ; 

__attribute__((used)) static int FUNC5(struct zpci_dev *zdev)
{
	if (zpci_unique_uid) {
		zdev->domain = (u16) zdev->uid;
		if (zdev->domain >= ZPCI_NR_DEVICES)
			return 0;

		FUNC2(&zpci_domain_lock);
		if (FUNC4(zdev->domain, zpci_domain)) {
			FUNC3(&zpci_domain_lock);
			return -EEXIST;
		}
		FUNC1(zdev->domain, zpci_domain);
		FUNC3(&zpci_domain_lock);
		return 0;
	}

	FUNC2(&zpci_domain_lock);
	zdev->domain = FUNC0(zpci_domain, ZPCI_NR_DEVICES);
	if (zdev->domain == ZPCI_NR_DEVICES) {
		FUNC3(&zpci_domain_lock);
		return -ENOSPC;
	}
	FUNC1(zdev->domain, zpci_domain);
	FUNC3(&zpci_domain_lock);
	return 0;
}