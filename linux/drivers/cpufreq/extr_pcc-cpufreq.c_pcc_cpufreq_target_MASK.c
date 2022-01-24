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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pcc_cpu {scalar_t__ input_offset; } ;
struct cpufreq_policy {int cpu; int /*<<< orphan*/  cur; } ;
struct cpufreq_freqs {unsigned int new; int /*<<< orphan*/  old; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  command; int /*<<< orphan*/  nominal; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_SZ ; 
 int /*<<< orphan*/  CMD_COMPLETE ; 
 int /*<<< orphan*/  CMD_SET_FREQ ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,struct cpufreq_freqs*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,struct cpufreq_freqs*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  pcc_cpu_info ; 
 int /*<<< orphan*/  pcc_lock ; 
 TYPE_1__* pcch_hdr ; 
 scalar_t__ pcch_virt_addr ; 
 struct pcc_cpu* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct cpufreq_policy *policy,
			      unsigned int target_freq,
			      unsigned int relation)
{
	struct pcc_cpu *pcc_cpu_data;
	struct cpufreq_freqs freqs;
	u16 status;
	u32 input_buffer;
	int cpu;

	cpu = policy->cpu;
	pcc_cpu_data = FUNC8(pcc_cpu_info, cpu);

	FUNC9("target: CPU %d should go to target freq: %d "
		"(virtual) input_offset is 0x%p\n",
		cpu, target_freq,
		(pcch_virt_addr + pcc_cpu_data->input_offset));

	freqs.old = policy->cur;
	freqs.new = target_freq;
	FUNC0(policy, &freqs);
	FUNC10(&pcc_lock);

	input_buffer = 0x1 | (((target_freq * 100)
			       / (FUNC3(&pcch_hdr->nominal) * 1000)) << 8);
	FUNC5(input_buffer,
			(pcch_virt_addr + pcc_cpu_data->input_offset));
	FUNC4(CMD_SET_FREQ, &pcch_hdr->command);

	FUNC7();

	/* Clear the input buffer - we are done with the current command */
	FUNC6((pcch_virt_addr + pcc_cpu_data->input_offset), 0, BUF_SZ);

	status = FUNC2(&pcch_hdr->status);
	FUNC4(0, &pcch_hdr->status);

	FUNC1(policy, &freqs, status != CMD_COMPLETE);
	FUNC11(&pcc_lock);

	if (status != CMD_COMPLETE) {
		FUNC9("target: FAILED for cpu %d, with status: 0x%x\n",
			cpu, status);
		return -EINVAL;
	}

	FUNC9("target: was SUCCESSFUL for cpu %d\n", cpu);

	return 0;
}