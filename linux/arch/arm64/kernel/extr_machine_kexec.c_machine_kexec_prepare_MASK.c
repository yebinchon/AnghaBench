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
struct kimage {scalar_t__ type; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ KEXEC_TYPE_CRASH ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kimage*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct kimage *kimage)
{
	FUNC1(kimage);

	if (kimage->type != KEXEC_TYPE_CRASH && FUNC0()) {
		FUNC2("Can't kexec: CPUs are stuck in the kernel.\n");
		return -EBUSY;
	}

	return 0;
}