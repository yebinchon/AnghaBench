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
struct kvm_shared_msrs {int /*<<< orphan*/  urn; scalar_t__ registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct kvm_shared_msrs* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  shared_msrs ; 
 unsigned int FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned int cpu = FUNC2();
	struct kvm_shared_msrs *smsr = FUNC1(shared_msrs, cpu);

	if (smsr->registered)
		FUNC0(&smsr->urn);
}