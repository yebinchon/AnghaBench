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
typedef  int /*<<< orphan*/  u64 ;
struct seq_file {struct kvm_vcpu* private; } ;
struct TYPE_2__ {int /*<<< orphan*/ * timing_count_type; int /*<<< orphan*/ * timing_sum_quad_duration; int /*<<< orphan*/ * timing_sum_duration; int /*<<< orphan*/ * timing_max_duration; int /*<<< orphan*/ * timing_min_duration; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int __NUMBER_OF_KVM_EXIT_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kvm_exit_names ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  tb_ticks_per_usec ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *private)
{
	struct kvm_vcpu *vcpu = m->private;
	int i;
	u64 min, max, sum, sum_quad;

	FUNC2(m, "type	count	min	max	sum	sum_squared\n");

	for (i = 0; i < __NUMBER_OF_KVM_EXIT_TYPES; i++) {

		min = vcpu->arch.timing_min_duration[i];
		FUNC0(min, tb_ticks_per_usec);
		max = vcpu->arch.timing_max_duration[i];
		FUNC0(max, tb_ticks_per_usec);
		sum = vcpu->arch.timing_sum_duration[i];
		FUNC0(sum, tb_ticks_per_usec);
		sum_quad = vcpu->arch.timing_sum_quad_duration[i];
		FUNC0(sum_quad, tb_ticks_per_usec);

		FUNC1(m, "%12s	%10d	%10lld	%10lld	%20lld	%20lld\n",
			kvm_exit_names[i],
			vcpu->arch.timing_count_type[i],
			min,
			max,
			sum,
			sum_quad);

	}
	return 0;
}