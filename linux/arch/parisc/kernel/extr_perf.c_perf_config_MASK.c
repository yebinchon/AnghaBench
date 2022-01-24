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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(uint32_t *image_ptr)
{
	long error;
	uint32_t raddr[4];

	/* Stop the counters*/
	error = FUNC1(raddr);
	if (error != 0) {
		FUNC3("perf_config: perf_stop_counters = %ld\n", error);
		return -EINVAL;
	}

FUNC3("Preparing to write image\n");
	/* Write the image to the chip */
	error = FUNC2((uint64_t *)image_ptr);
	if (error != 0) {
		FUNC3("perf_config: DOWNLOAD = %ld\n", error);
		return -EINVAL;
	}

FUNC3("Preparing to start counters\n");

	/* Start the counters */
	FUNC0();

	return sizeof(uint32_t);
}