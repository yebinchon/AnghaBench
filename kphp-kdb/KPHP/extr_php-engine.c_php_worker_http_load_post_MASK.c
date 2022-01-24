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
struct TYPE_6__ {TYPE_1__ base; int /*<<< orphan*/  max_len; int /*<<< orphan*/  min_len; int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ php_query_http_load_post_t ;
struct TYPE_7__ {scalar_t__ loaded_bytes; } ;
typedef  TYPE_3__ php_query_http_load_post_answer_t ;

/* Variables and functions */
 int /*<<< orphan*/  php_script ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 

void FUNC4 (php_worker *worker, php_query_http_load_post_t *query) {
  FUNC1 (php_script);

  static php_query_http_load_post_answer_t res;
  res.loaded_bytes = FUNC2 (worker, query->buf, query->min_len, query->max_len);
  query->base.ans = &res;

  FUNC0 (php_script);

  if (res.loaded_bytes < 0) {
    FUNC3 (worker, 1, "error during loading big post data"); //TODO we need to close connection. Do we need to pass 1 as second parameter?
  }
}