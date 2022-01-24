#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct conn_query {int dummy; } ;
struct TYPE_4__ {struct conn_query* last_query; struct conn_query* first_query; } ;
struct TYPE_3__ {struct conn_query* last_query; struct conn_query* first_query; } ;

/* Variables and functions */
 TYPE_2__ dummy_request_queue ; 
 int /*<<< orphan*/  got_result ; 
 int /*<<< orphan*/  got_result_ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 TYPE_1__ pending_http_queue ; 
 scalar_t__ php_worker_run_flag ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int worker_id ; 

void FUNC7() {
  FUNC5 ((long)FUNC4());

  //init pending_http_queue
  pending_http_queue.first_query = pending_http_queue.last_query = (struct conn_query *)&pending_http_queue;
  php_worker_run_flag = 0;

  dummy_request_queue.first_query = dummy_request_queue.last_query = (struct conn_query *)&dummy_request_queue;

  //init php_script
  FUNC6();
  FUNC1();

  FUNC0();
  got_result = got_result_;

  FUNC2();

  worker_id = (int)FUNC3();
}