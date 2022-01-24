#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hts_data {TYPE_1__* extra; } ;
struct connection {scalar_t__ status; scalar_t__ pending_queries; } ;
struct TYPE_4__ {scalar_t__ finish_time; } ;
typedef  TYPE_1__ php_worker ;

/* Variables and functions */
 struct hts_data* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ conn_expect_query ; 
 scalar_t__ conn_wait_net ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ precise_now ; 

int FUNC5 (struct connection *c) {
  struct hts_data *D = FUNC0(c);

  FUNC1 (c->status == conn_expect_query || c->status == conn_wait_net);
  c->status = conn_expect_query;

  php_worker *worker = D->extra;
  if (worker->finish_time < precise_now + 0.01) {
    FUNC4 (worker, 0, "timeout in http connection wakeup");
  }
  int res = FUNC3 (worker);
  if (res == 1) {
    FUNC2 (c, 1);
  } else {
    FUNC1 (c->pending_queries >= 0 && c->status == conn_wait_net);
  }
  return 0;
}