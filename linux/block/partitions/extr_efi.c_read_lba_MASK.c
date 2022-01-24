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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct parsed_partitions {struct block_device* bdev; } ;
struct block_device {int dummy; } ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 int FUNC0 (struct block_device*) ; 
 int FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (struct parsed_partitions*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC5(struct parsed_partitions *state,
		       u64 lba, u8 *buffer, size_t count)
{
	size_t totalreadcount = 0;
	struct block_device *bdev = state->bdev;
	sector_t n = lba * (FUNC0(bdev) / 512);

	if (!buffer || lba > FUNC1(bdev))
                return 0;

	while (count) {
		int copied = 512;
		Sector sect;
		unsigned char *data = FUNC4(state, n++, &sect);
		if (!data)
			break;
		if (copied > count)
			copied = count;
		FUNC2(buffer, data, copied);
		FUNC3(sect);
		buffer += copied;
		totalreadcount +=copied;
		count -= copied;
	}
	return totalreadcount;
}