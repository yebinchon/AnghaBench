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
typedef  int u16 ;
struct perf_event {int dummy; } ;
struct hv_24x7_request_buffer {scalar_t__ num_requests; int interface_version; scalar_t__ requests; } ;
struct hv_24x7_request {int performance_domain; int max_num_thread_groups; int starting_thread_group_ix; void* max_ix; void* starting_ix; void* max_num_lpars; void* starting_lpar_ix; int /*<<< orphan*/  data_offset; void* data_size; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (int) ; 
#define  HV_PERF_DOMAIN_PHYS_CHIP 129 
#define  HV_PERF_DOMAIN_PHYS_CORE 128 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct perf_event*) ; 
 int FUNC5 (struct perf_event*) ; 
 int FUNC6 (struct perf_event*) ; 
 int FUNC7 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event*) ; 
 int FUNC9 (struct perf_event*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct perf_event *event,
				struct hv_24x7_request_buffer *request_buffer)
{
	u16 idx;
	int i;
	size_t req_size;
	struct hv_24x7_request *req;

	if (request_buffer->num_requests >=
	    FUNC10(request_buffer->interface_version)) {
		FUNC11("Too many requests for 24x7 HCALL %d\n",
				request_buffer->num_requests);
		return -EINVAL;
	}

	switch (FUNC6(event)) {
	case HV_PERF_DOMAIN_PHYS_CHIP:
		idx = FUNC4(event);
		break;
	case HV_PERF_DOMAIN_PHYS_CORE:
		idx = FUNC5(event);
		break;
	default:
		idx = FUNC9(event);
	}

	req_size = FUNC0(request_buffer->interface_version);

	i = request_buffer->num_requests++;
	req = (void *) request_buffer->requests + i * req_size;

	req->performance_domain = FUNC6(event);
	req->data_size = FUNC1(8);
	req->data_offset = FUNC2(FUNC8(event));
	req->starting_lpar_ix = FUNC1(FUNC7(event));
	req->max_num_lpars = FUNC1(1);
	req->starting_ix = FUNC1(idx);
	req->max_ix = FUNC1(1);

	if (request_buffer->interface_version > 1) {
		if (FUNC3(req->performance_domain))
			req->max_num_thread_groups = -1;
		else if (req->performance_domain != HV_PERF_DOMAIN_PHYS_CHIP) {
			req->starting_thread_group_ix = idx % 2;
			req->max_num_thread_groups = 1;
		}
	}

	return 0;
}