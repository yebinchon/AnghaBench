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
struct loaded_vmcs {int /*<<< orphan*/ * shadow_vmcs; scalar_t__ msr_bitmap; int /*<<< orphan*/ * vmcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct loaded_vmcs*) ; 

void FUNC4(struct loaded_vmcs *loaded_vmcs)
{
	if (!loaded_vmcs->vmcs)
		return;
	FUNC3(loaded_vmcs);
	FUNC2(loaded_vmcs->vmcs);
	loaded_vmcs->vmcs = NULL;
	if (loaded_vmcs->msr_bitmap)
		FUNC1((unsigned long)loaded_vmcs->msr_bitmap);
	FUNC0(loaded_vmcs->shadow_vmcs != NULL);
}