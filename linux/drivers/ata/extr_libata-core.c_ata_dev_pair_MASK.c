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
struct ata_link {struct ata_device* device; } ;
struct ata_device {int devno; struct ata_link* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_device*) ; 

struct ata_device *FUNC1(struct ata_device *adev)
{
	struct ata_link *link = adev->link;
	struct ata_device *pair = &link->device[1 - adev->devno];
	if (!FUNC0(pair))
		return NULL;
	return pair;
}