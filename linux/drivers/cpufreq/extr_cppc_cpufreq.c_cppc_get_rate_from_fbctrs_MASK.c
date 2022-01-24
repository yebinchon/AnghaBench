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
typedef  int u64 ;
struct cppc_perf_fb_ctrs {int reference_perf; int /*<<< orphan*/  delivered; int /*<<< orphan*/  reference; } ;
struct TYPE_2__ {int desired_perf; } ;
struct cppc_cpudata {TYPE_1__ perf_ctrls; } ;

/* Variables and functions */
 int FUNC0 (struct cppc_cpudata*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cppc_cpudata *cpu,
				     struct cppc_perf_fb_ctrs fb_ctrs_t0,
				     struct cppc_perf_fb_ctrs fb_ctrs_t1)
{
	u64 delta_reference, delta_delivered;
	u64 reference_perf, delivered_perf;

	reference_perf = fb_ctrs_t0.reference_perf;

	delta_reference = FUNC1(fb_ctrs_t1.reference,
				    fb_ctrs_t0.reference);
	delta_delivered = FUNC1(fb_ctrs_t1.delivered,
				    fb_ctrs_t0.delivered);

	/* Check to avoid divide-by zero */
	if (delta_reference || delta_delivered)
		delivered_perf = (reference_perf * delta_delivered) /
					delta_reference;
	else
		delivered_perf = cpu->perf_ctrls.desired_perf;

	return FUNC0(cpu, delivered_perf);
}