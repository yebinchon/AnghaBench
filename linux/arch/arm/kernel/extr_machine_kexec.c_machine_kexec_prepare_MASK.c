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
struct TYPE_2__ {scalar_t__ kernel_r2; } ;
struct kimage {int nr_segments; TYPE_1__ arch; struct kexec_segment* segment; scalar_t__ start; } ;
struct kexec_segment {scalar_t__ mem; scalar_t__ buf; int /*<<< orphan*/  memsz; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ KEXEC_ARM_ATAGS_OFFSET ; 
 scalar_t__ KEXEC_ARM_ZIMAGE_OFFSET ; 
 int /*<<< orphan*/  OF_DT_HEADER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

int FUNC7(struct kimage *image)
{
	struct kexec_segment *current_segment;
	__be32 header;
	int i, err;

	image->arch.kernel_r2 = image->start - KEXEC_ARM_ZIMAGE_OFFSET
				     + KEXEC_ARM_ATAGS_OFFSET;

	/*
	 * Validate that if the current HW supports SMP, then the SW supports
	 * and implements CPU hotplug for the current HW. If not, we won't be
	 * able to kexec reliably, so fail the prepare operation.
	 */
	if (FUNC4() > 1 && FUNC6() &&
	    !FUNC5())
		return -EINVAL;

	/*
	 * No segment at default ATAGs address. try to locate
	 * a dtb using magic.
	 */
	for (i = 0; i < image->nr_segments; i++) {
		current_segment = &image->segment[i];

		if (!FUNC3(FUNC2(current_segment->mem),
					       current_segment->memsz))
			return -EINVAL;

		err = FUNC1(header, (__be32*)current_segment->buf);
		if (err)
			return err;

		if (header == FUNC0(OF_DT_HEADER))
			image->arch.kernel_r2 = current_segment->mem;
	}
	return 0;
}