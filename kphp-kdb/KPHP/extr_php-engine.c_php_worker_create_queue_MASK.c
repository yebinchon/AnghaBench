#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_worker ;
struct TYPE_5__ {TYPE_3__* ans; } ;
struct TYPE_6__ {TYPE_1__ base; int /*<<< orphan*/  request_ids_len; int /*<<< orphan*/  request_ids; } ;
typedef  TYPE_2__ php_query_create_queue_t ;
struct TYPE_7__ {long long queue_id; } ;
typedef  TYPE_3__ php_query_create_queue_answer_t ;

/* Variables and functions */
 long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  php_script ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 (php_worker *worker, php_query_create_queue_t *query) {
  FUNC2 (php_script);

  static php_query_create_queue_answer_t res;
  long long queue_id = FUNC0 (query->request_ids, query->request_ids_len);
  res.queue_id = queue_id;

  query->base.ans = &res;

  FUNC1 (php_script);
}