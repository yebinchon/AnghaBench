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
typedef  int /*<<< orphan*/  u64 ;
struct trace_imc_data {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event_header {int /*<<< orphan*/  size; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (struct perf_output_handle*,struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_output_handle*,struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ; 
 int trace_imc_mem_size ; 
 int FUNC4 (struct trace_imc_data*,struct perf_sample_data*,int /*<<< orphan*/ *,struct perf_event_header*,struct perf_event*) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event)
{
	struct trace_imc_data *mem;
	int i, ret;
	u64 prev_tb = 0;

	mem = (struct trace_imc_data *)FUNC0();
	for (i = 0; i < (trace_imc_mem_size / sizeof(struct trace_imc_data));
		i++, mem++) {
		struct perf_sample_data data;
		struct perf_event_header header;

		ret = FUNC4(mem, &data, &prev_tb, &header, event);
		if (ret) /* Exit, if not a valid record */
			break;
		else {
			/* If this is a valid record, create the sample */
			struct perf_output_handle handle;

			if (FUNC1(&handle, event, header.size))
				return;

			FUNC3(&handle, &header, &data, event);
			FUNC2(&handle);
		}
	}
}