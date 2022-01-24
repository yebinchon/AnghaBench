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
struct ata_device {int horkage; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ATA_HORKAGE_IVB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ata_device *dev)
{
	if (dev->horkage & ATA_HORKAGE_IVB)
		return FUNC1(dev->id);
	return FUNC0(dev->id);
}