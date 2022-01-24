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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned int,unsigned int,unsigned int*) ; 
 int FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 

int FUNC4(unsigned int bus_index,
	unsigned int dev_index, u64 *port, u64 *blk_size,
	u64 *num_blocks, unsigned int *num_regions)
{
	int result;

	result = FUNC3(bus_index, dev_index, port);
	if (result)
	    return result;

	result = FUNC0(bus_index, dev_index,
		blk_size);
	if (result)
	    return result;

	result = FUNC1(bus_index, dev_index,
		num_blocks);
	if (result)
	    return result;

	result = FUNC2(bus_index, dev_index,
		num_regions);
	return result;
}