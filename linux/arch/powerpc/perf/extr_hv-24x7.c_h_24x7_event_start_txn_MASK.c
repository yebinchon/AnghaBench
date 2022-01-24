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
struct pmu {int dummy; } ;
struct hv_24x7_request_buffer {int dummy; } ;
struct hv_24x7_data_result_buffer {int dummy; } ;

/* Variables and functions */
 unsigned int PERF_PMU_TXN_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hv_24x7_reqb ; 
 int /*<<< orphan*/  hv_24x7_resb ; 
 int /*<<< orphan*/  hv_24x7_txn_flags ; 
 int /*<<< orphan*/  FUNC4 (struct hv_24x7_request_buffer*,struct hv_24x7_data_result_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pmu *pmu, unsigned int flags)
{
	struct hv_24x7_request_buffer *request_buffer;
	struct hv_24x7_data_result_buffer *result_buffer;

	/* We should not be called if we are already in a txn */
	FUNC0(FUNC1(hv_24x7_txn_flags));

	FUNC2(hv_24x7_txn_flags, flags);
	if (flags & ~PERF_PMU_TXN_READ)
		return;

	request_buffer = (void *)FUNC3(hv_24x7_reqb);
	result_buffer = (void *)FUNC3(hv_24x7_resb);

	FUNC4(request_buffer, result_buffer);

	FUNC5(hv_24x7_resb);
	FUNC5(hv_24x7_reqb);
}