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
struct trace_imc_data {int /*<<< orphan*/  ip; int /*<<< orphan*/  tb2; int /*<<< orphan*/  tb1; } ;
struct perf_sample_data {int ip; int /*<<< orphan*/  period; } ;
struct perf_event_header {int /*<<< orphan*/  misc; scalar_t__ size; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  last_period; } ;
struct perf_event {scalar_t__ header_size; TYPE_1__ hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int IMC_TRACE_RECORD_TB1_MASK ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_KERNEL ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_USER ; 
 int /*<<< orphan*/  PERF_RECORD_SAMPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ; 

__attribute__((used)) static int FUNC4(struct trace_imc_data *mem,
				    struct perf_sample_data *data,
				    u64 *prev_tb,
				    struct perf_event_header *header,
				    struct perf_event *event)
{
	/* Sanity checks for a valid record */
	if (FUNC1(FUNC0(mem->tb1)) > *prev_tb)
		*prev_tb = FUNC1(FUNC0(mem->tb1));
	else
		return -EINVAL;

	if ((FUNC1(FUNC0(mem->tb1)) & IMC_TRACE_RECORD_TB1_MASK) !=
			 FUNC1(FUNC0(mem->tb2)))
		return -EINVAL;

	/* Prepare perf sample */
	data->ip =  FUNC1(FUNC0(mem->ip));
	data->period = event->hw.last_period;

	header->type = PERF_RECORD_SAMPLE;
	header->size = sizeof(*header) + event->header_size;
	header->misc = 0;

	if (FUNC2(data->ip))
		header->misc |= PERF_RECORD_MISC_KERNEL;
	else
		header->misc |= PERF_RECORD_MISC_USER;

	FUNC3(header, data, event);

	return 0;
}