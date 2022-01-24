#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int state; TYPE_1__* conn; scalar_t__ paused; } ;
typedef  TYPE_2__ php_worker ;
struct TYPE_9__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ conn_wait_net ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
#define  phpq_finish 132 
#define  phpq_free_script 131 
#define  phpq_init_script 130 
#define  phpq_run 129 
#define  phpq_try_start 128 

int FUNC6 (php_worker *worker) {
  worker->paused = 0;
  do {
    switch (worker->state) {
      case phpq_try_start:
        FUNC5 (worker);
        break;

      case phpq_init_script:
        FUNC3 (worker);
        break;

      case phpq_run:
        FUNC4 (worker);
        break;

      case phpq_free_script:
        FUNC2 (worker);
        break;

      case phpq_finish:
        FUNC1 (worker);
        return 1;
    }
  } while (!worker->paused);

  FUNC0 (worker->conn->status == conn_wait_net);
  return 0;
}