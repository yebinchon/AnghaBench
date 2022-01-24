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
struct zpci_iomap_entry {int dummy; } ;
struct zpci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zpci_iomap_bitmap ; 
 int /*<<< orphan*/  zpci_iomap_lock ; 
 int /*<<< orphan*/ * zpci_iomap_start ; 

__attribute__((used)) static void FUNC4(struct zpci_dev *zdev, int entry)
{
	FUNC2(&zpci_iomap_lock);
	FUNC1(&zpci_iomap_start[entry], 0, sizeof(struct zpci_iomap_entry));
	FUNC0(entry, zpci_iomap_bitmap);
	FUNC3(&zpci_iomap_lock);
}