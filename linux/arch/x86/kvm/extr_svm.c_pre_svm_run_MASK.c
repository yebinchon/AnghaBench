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
struct TYPE_2__ {int /*<<< orphan*/  kvm; } ;
struct vcpu_svm {scalar_t__ asid_generation; TYPE_1__ vcpu; } ;
struct svm_cpu_data {scalar_t__ asid_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*,struct svm_cpu_data*) ; 
 struct svm_cpu_data* FUNC1 (int /*<<< orphan*/ ,int) ; 
 void FUNC2 (struct vcpu_svm*,int) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svm_data ; 

__attribute__((used)) static void FUNC5(struct vcpu_svm *svm)
{
	int cpu = FUNC3();

	struct svm_cpu_data *sd = FUNC1(svm_data, cpu);

	if (FUNC4(svm->vcpu.kvm))
		return FUNC2(svm, cpu);

	/* FIXME: handle wraparound of asid_generation */
	if (svm->asid_generation != sd->asid_generation)
		FUNC0(svm, sd);
}