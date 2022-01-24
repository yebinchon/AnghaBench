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
struct kimage {long nr_segments; int /*<<< orphan*/  head; int /*<<< orphan*/  segment; } ;
struct kexec_segment {scalar_t__ memsz; scalar_t__ mem; } ;
typedef  int /*<<< orphan*/  ranges ;

/* Variables and functions */
 int KEXEC_SEGMENT_MAX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct kexec_segment*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct kimage *image)
{
	long i, nr_segments = image->nr_segments;
	struct  kexec_segment ranges[KEXEC_SEGMENT_MAX];

	/* save the ranges on the stack to efficiently flush the icache */
	FUNC3(ranges, image->segment, sizeof(ranges));

	/*
	 * After this call we may not use anything allocated in dynamic
	 * memory, including *image.
	 *
	 * Only globals and the stack are allowed.
	 */
	FUNC1(image->head);

	/*
	 * we need to clear the icache for all dest pages sometime,
	 * including ones that were in place on the original copy
	 */
	for (i = 0; i < nr_segments; i++)
		FUNC2((unsigned long)FUNC0(ranges[i].mem),
			(unsigned long)FUNC0(ranges[i].mem + ranges[i].memsz));
}