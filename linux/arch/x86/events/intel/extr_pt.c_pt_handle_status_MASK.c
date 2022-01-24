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
struct pt_buffer {scalar_t__ output_off; int /*<<< orphan*/  snapshot; } ;
struct pt {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_RTIT_STATUS ; 
 int /*<<< orphan*/  PERF_AUX_FLAG_TRUNCATED ; 
 int /*<<< orphan*/  PT_CAP_topa_multiple_entries ; 
 int RTIT_STATUS_ERROR ; 
 int RTIT_STATUS_STOPPED ; 
 scalar_t__ TOPA_PMI_MARGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pt_buffer* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_buffer*) ; 
 void* FUNC6 (struct pt_buffer*) ; 
 scalar_t__ FUNC7 (struct pt_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct pt_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct pt *pt)
{
	struct pt_buffer *buf = FUNC3(&pt->handle);
	int advance = 0;
	u64 status;

	FUNC9(MSR_IA32_RTIT_STATUS, status);

	if (status & RTIT_STATUS_ERROR) {
		FUNC4("ToPA ERROR encountered, trying to recover\n");
		FUNC8(buf);
		status &= ~RTIT_STATUS_ERROR;
	}

	if (status & RTIT_STATUS_STOPPED) {
		status &= ~RTIT_STATUS_STOPPED;

		/*
		 * On systems that only do single-entry ToPA, hitting STOP
		 * means we are already losing data; need to let the decoder
		 * know.
		 */
		if (!FUNC0(PT_CAP_topa_multiple_entries) ||
		    buf->output_off == FUNC7(buf)) {
			FUNC2(&pt->handle,
			                     PERF_AUX_FLAG_TRUNCATED);
			advance++;
		}
	}

	/*
	 * Also on single-entry ToPA implementations, interrupt will come
	 * before the output reaches its output region's boundary.
	 */
	if (!FUNC0(PT_CAP_topa_multiple_entries) &&
	    !buf->snapshot &&
	    FUNC7(buf) - buf->output_off <= TOPA_PMI_MARGIN) {
		void *head = FUNC6(buf);

		/* everything within this margin needs to be zeroed out */
		FUNC1(head + buf->output_off, 0,
		       FUNC7(buf) -
		       buf->output_off);
		advance++;
	}

	if (advance)
		FUNC5(buf);

	FUNC10(MSR_IA32_RTIT_STATUS, status);
}