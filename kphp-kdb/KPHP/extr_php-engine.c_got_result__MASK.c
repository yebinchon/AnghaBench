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
struct conn_query {int dummy; } ;
struct TYPE_2__ {struct conn_query* first_query; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long long cur_request_id ; 
 TYPE_1__ dummy_request_queue ; 
 int /*<<< orphan*/  FUNC1 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,long long,long long) ; 

void FUNC3 (long long request_id) {
  FUNC2 (2, "got_result [rpc_id = <%lld>], wait for [rpc_id = <%lld>]\n", request_id, cur_request_id);
  if (cur_request_id != request_id) {
    return;
  }

  cur_request_id = -1;

  while (dummy_request_queue.first_query != (struct conn_query *)&dummy_request_queue) {
    struct conn_query *q = dummy_request_queue.first_query;
    FUNC1 (q);
    FUNC0 (dummy_request_queue.first_query != q);
  }
}