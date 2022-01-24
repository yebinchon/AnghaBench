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
struct gendisk {scalar_t__ queue; int /*<<< orphan*/  part0; struct gendisk* random; } ;
struct device {int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct gendisk* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC4 (struct gendisk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gendisk*) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct gendisk *disk = FUNC2(dev);

	FUNC0(dev->devt);
	FUNC3(disk);
	FUNC6(disk->random);
	FUNC4(disk, NULL);
	FUNC5(&disk->part0);
	if (disk->queue)
		FUNC1(disk->queue);
	FUNC6(disk);
}