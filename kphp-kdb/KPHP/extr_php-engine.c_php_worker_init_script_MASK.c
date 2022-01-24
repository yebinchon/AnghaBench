#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_t ;
struct TYPE_4__ {double finish_time; double start_time; int /*<<< orphan*/  state; int /*<<< orphan*/  data; int /*<<< orphan*/  req_id; scalar_t__ terminate_flag; } ;
typedef  TYPE_1__ php_worker ;
struct TYPE_5__ {int is_running; scalar_t__ is_wait_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__ immediate_stats ; 
 scalar_t__ max_memory ; 
 int /*<<< orphan*/ * php_script ; 
 int /*<<< orphan*/ * FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 int /*<<< orphan*/  phpq_finish ; 
 int /*<<< orphan*/  phpq_run ; 
 double precise_now ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ) ; 

void FUNC9 (php_worker *worker) {
  double timeout = worker->finish_time - precise_now - 0.01;
  if (worker->terminate_flag || timeout < 0.2) {
    worker->state = phpq_finish;
    return;
  }

  /*if (http_sfd != -1) {*/
    /*epoll_remove (http_sfd);*/
  /*}*/

  FUNC2();
  worker->start_time = precise_now;
  FUNC8 (1, "START php script [req_id = %016llx]\n", worker->req_id);
  immediate_stats.is_running = 1;
  immediate_stats.is_wait_net = 0;

  //init memory allocator for queries
  FUNC6();
  FUNC7();

  script_t *script = FUNC1 ("#0");
  FUNC0 (script != NULL, "failed to get script");
  if (php_script == NULL) {
    php_script = FUNC3 ((size_t)max_memory, (size_t)(8 << 20));
  }
  FUNC4 (php_script, script, worker->data);
  FUNC5 (timeout);
  worker->state = phpq_run;
}