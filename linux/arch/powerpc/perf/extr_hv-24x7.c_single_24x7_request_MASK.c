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
struct perf_event {int dummy; } ;
struct hv_24x7_request_buffer {int dummy; } ;
struct hv_24x7_data_result_buffer {int /*<<< orphan*/  results; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct perf_event*,struct hv_24x7_request_buffer*) ; 
 int FUNC2 (struct perf_event*,struct hv_24x7_data_result_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hv_24x7_reqb ; 
 int /*<<< orphan*/  hv_24x7_resb ; 
 int /*<<< orphan*/  FUNC4 (struct hv_24x7_request_buffer*,struct hv_24x7_data_result_buffer*) ; 
 int FUNC5 (struct hv_24x7_request_buffer*,struct hv_24x7_data_result_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct perf_event *event, u64 *count)
{
	int ret;
	struct hv_24x7_request_buffer *request_buffer;
	struct hv_24x7_data_result_buffer *result_buffer;

	FUNC0(sizeof(*request_buffer) > 4096);
	FUNC0(sizeof(*result_buffer) > 4096);

	request_buffer = (void *)FUNC3(hv_24x7_reqb);
	result_buffer = (void *)FUNC3(hv_24x7_resb);

	FUNC4(request_buffer, result_buffer);

	ret = FUNC1(event, request_buffer);
	if (ret)
		goto out;

	ret = FUNC5(request_buffer, result_buffer);
	if (ret)
		goto out;

	/* process result from hcall */
	ret = FUNC2(event, result_buffer,
				    result_buffer->results, count, NULL);

out:
	FUNC6(hv_24x7_reqb);
	FUNC6(hv_24x7_resb);
	return ret;
}