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
struct tl_saved_query {int failed; int /*<<< orphan*/  (* free_extra ) (struct tl_saved_query*) ;int /*<<< orphan*/  wait_num; int /*<<< orphan*/  error_code; } ;
struct binlog_wait_query {struct tl_saved_query* extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  TL_ERROR_BINLOG_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  binlog_wait_time_tree ; 
 int /*<<< orphan*/  expired_aio_queries ; 
 int /*<<< orphan*/  FUNC0 (struct tl_saved_query*) ; 
 int /*<<< orphan*/  FUNC1 (struct tl_saved_query*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct binlog_wait_query*) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_saved_query*,int) ; 

void FUNC5 (struct binlog_wait_query *Q) {
  struct tl_saved_query *q = Q->extra;
  binlog_wait_time_tree = FUNC3 (binlog_wait_time_tree, Q);
  FUNC2 ();
 
  q->wait_num --;
  expired_aio_queries ++;
  if (!q->failed) {
    q->error_code = TL_ERROR_BINLOG_WAIT_TIMEOUT;
    FUNC1 (q);
    //q->fail (q);
  }
  q->failed = 1;
  if (!q->wait_num) {
    q->free_extra (q);
    FUNC4 (q, sizeof (*q));
  }
}