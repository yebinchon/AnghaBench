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
typedef  int u64 ;
struct pvclock_vsyscall_time_info {int /*<<< orphan*/  pvti; } ;

/* Variables and functions */
 int /*<<< orphan*/  msr_kvm_system_time ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct pvclock_vsyscall_time_info* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(char *txt)
{
	struct pvclock_vsyscall_time_info *src = FUNC3();
	u64 pa;

	if (!src)
		return;

	pa = FUNC1(&src->pvti) | 0x01ULL;
	FUNC4(msr_kvm_system_time, pa);
	FUNC0("kvm-clock: cpu %d, msr %llx, %s", FUNC2(), pa, txt);
}