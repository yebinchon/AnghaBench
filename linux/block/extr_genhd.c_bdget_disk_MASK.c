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
struct hd_struct {int dummy; } ;
struct gendisk {int dummy; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 struct block_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct hd_struct* FUNC1 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct hd_struct*) ; 

struct block_device *FUNC4(struct gendisk *disk, int partno)
{
	struct hd_struct *part;
	struct block_device *bdev = NULL;

	part = FUNC1(disk, partno);
	if (part)
		bdev = FUNC0(FUNC3(part));
	FUNC2(part);

	return bdev;
}