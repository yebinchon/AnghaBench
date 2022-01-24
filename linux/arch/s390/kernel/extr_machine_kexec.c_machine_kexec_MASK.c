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
 scalar_t__ KEXEC_TYPE_CRASH ; 
 int /*<<< orphan*/  __machine_kexec ; 
 int /*<<< orphan*/  FUNC0 (struct kimage*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kimage*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct kimage *image)
{
	if (image->type == KEXEC_TYPE_CRASH && !FUNC0(image))
		return;
	FUNC3();
	FUNC2();
	FUNC1(__machine_kexec, image);
}