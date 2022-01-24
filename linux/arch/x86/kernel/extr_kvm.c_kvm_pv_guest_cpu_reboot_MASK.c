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

/* Variables and functions */
 int /*<<< orphan*/  KVM_FEATURE_PV_EOI ; 
 int /*<<< orphan*/  MSR_KVM_PV_EOI_EN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *unused)
{
	/*
	 * We disable PV EOI before we load a new kernel by kexec,
	 * since MSR_KVM_PV_EOI_EN stores a pointer into old kernel's memory.
	 * New kernel can re-enable when it boots.
	 */
	if (FUNC1(KVM_FEATURE_PV_EOI))
		FUNC3(MSR_KVM_PV_EOI_EN, 0);
	FUNC2();
	FUNC0();
}