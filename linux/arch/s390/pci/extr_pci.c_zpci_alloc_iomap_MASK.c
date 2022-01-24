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
struct zpci_dev {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 unsigned long ZPCI_IOMAP_ENTRIES ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zpci_iomap_bitmap ; 
 int /*<<< orphan*/  zpci_iomap_lock ; 

__attribute__((used)) static int FUNC4(struct zpci_dev *zdev)
{
	unsigned long entry;

	FUNC2(&zpci_iomap_lock);
	entry = FUNC0(zpci_iomap_bitmap, ZPCI_IOMAP_ENTRIES);
	if (entry == ZPCI_IOMAP_ENTRIES) {
		FUNC3(&zpci_iomap_lock);
		return -ENOSPC;
	}
	FUNC1(entry, zpci_iomap_bitmap);
	FUNC3(&zpci_iomap_lock);
	return entry;
}