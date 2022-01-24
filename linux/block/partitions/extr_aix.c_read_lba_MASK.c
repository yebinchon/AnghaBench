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
typedef  scalar_t__ u64 ;
struct parsed_partitions {int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (struct parsed_partitions*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC4(struct parsed_partitions *state, u64 lba, u8 *buffer,
			size_t count)
{
	size_t totalreadcount = 0;

	if (!buffer || lba + count / 512 > FUNC0(state->bdev))
		return 0;

	while (count) {
		int copied = 512;
		Sector sect;
		unsigned char *data = FUNC3(state, lba++, &sect);
		if (!data)
			break;
		if (copied > count)
			copied = count;
		FUNC1(buffer, data, copied);
		FUNC2(sect);
		buffer += copied;
		totalreadcount += copied;
		count -= copied;
	}
	return totalreadcount;
}