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
typedef  void* u32 ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {void* tid; void* pid; } ;
struct perf_sample_data {TYPE_1__ tid_entry; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event_header {int /*<<< orphan*/  size; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  PIDTYPE_TGID ; 
 void* FUNC0 (struct perf_event*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct perf_output_handle*,struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_output_handle*,struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event_header*,struct perf_sample_data*,struct perf_event*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct perf_event *event,
				    struct perf_sample_data *data,
				    struct pt_regs *regs)
{
	u32 pid;
	struct perf_event_header header;
	struct perf_output_handle handle;

	/*
	 * Obtain the PID from the basic-sampling data entry and
	 * correct the data->tid_entry.pid value.
	 */
	pid = data->tid_entry.pid;

	/* Protect callchain buffers, tasks */
	FUNC5();

	FUNC4(&header, data, event, regs);
	if (FUNC1(&handle, event, header.size))
		goto out;

	/* Update the process ID (see also kernel/events/core.c) */
	data->tid_entry.pid = FUNC0(event, pid, PIDTYPE_TGID);
	data->tid_entry.tid = FUNC0(event, pid, PIDTYPE_PID);

	FUNC3(&handle, &header, data, event);
	FUNC2(&handle);
out:
	FUNC6();
}