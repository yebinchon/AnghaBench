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
struct page {int dummy; } ;
struct brd_device {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {struct brd_device* private_data; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct brd_device*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct block_device *bdev, sector_t sector,
		       struct page *page, unsigned int op)
{
	struct brd_device *brd = bdev->bd_disk->private_data;
	int err;

	if (FUNC0(page))
		return -ENOTSUPP;
	err = FUNC1(brd, page, PAGE_SIZE, 0, op, sector);
	FUNC3(page, FUNC2(op), err);
	return err;
}