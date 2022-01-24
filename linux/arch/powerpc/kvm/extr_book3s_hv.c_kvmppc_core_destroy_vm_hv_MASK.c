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
struct TYPE_2__ {int /*<<< orphan*/  lpid; scalar_t__ process_table; int /*<<< orphan*/  hpt; int /*<<< orphan*/  threads_indep; int /*<<< orphan*/  debugfs_dir; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*) ; 
 scalar_t__ FUNC11 (struct kvm*) ; 

__attribute__((used)) static void FUNC12(struct kvm *kvm)
{
	FUNC1(kvm->arch.debugfs_dir);

	if (!kvm->arch.threads_indep)
		FUNC2();

	FUNC10(kvm);


	if (FUNC3(kvm))
		FUNC9(kvm);
	else
		FUNC6(&kvm->arch.hpt);

	/* Perform global invalidation and return lpid to the pool */
	if (FUNC0(CPU_FTR_ARCH_300)) {
		if (FUNC11(kvm))
			FUNC4(kvm);
		kvm->arch.process_table = 0;
		FUNC5(kvm->arch.lpid, 0, 0);
	}
	FUNC7(kvm->arch.lpid);

	FUNC8(kvm);
}