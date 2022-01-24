#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ kvm_vcore; } ;
struct TYPE_4__ {TYPE_1__ kvm_hstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__** paca_ptrs ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 () ; 

__attribute__((used)) static void FUNC4(int n_threads)
{
	int cpu = FUNC3();
	int i, loops;

	if (n_threads <= 1)
		return;
	for (loops = 0; loops < 1000000; ++loops) {
		/*
		 * Check if all threads are finished.
		 * We set the vcore pointer when starting a thread
		 * and the thread clears it when finished, so we look
		 * for any threads that still have a non-NULL vcore ptr.
		 */
		for (i = 1; i < n_threads; ++i)
			if (paca_ptrs[cpu + i]->kvm_hstate.kvm_vcore)
				break;
		if (i == n_threads) {
			FUNC1();
			return;
		}
		FUNC0();
	}
	FUNC1();
	for (i = 1; i < n_threads; ++i)
		if (paca_ptrs[cpu + i]->kvm_hstate.kvm_vcore)
			FUNC2("KVM: CPU %d seems to be stuck\n", cpu + i);
}