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
struct tl_saved_query {int /*<<< orphan*/  failed; int /*<<< orphan*/  wait_num; } ;
struct binlog_wait_query {scalar_t__ timeout; scalar_t__ start_time; int /*<<< orphan*/  wait_pos; int /*<<< orphan*/  ev; struct tl_saved_query* extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_saved_query*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 long long FUNC2 () ; 
 long long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ precise_now ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tl_saved_query*,long long,scalar_t__) ; 

void FUNC6 (struct binlog_wait_query *Q) {
  struct tl_saved_query *q = Q->extra;
  FUNC4 (&Q->ev);
  q->wait_num --;
  long long pos = FUNC3 (Q->wait_pos);
  FUNC1 (pos > 0);
  if (FUNC2 () < pos && !q->failed) {
    FUNC5 (q, pos, Q->start_time + Q->timeout - precise_now);
  }

  if (!q->wait_num && !q->failed) {
    FUNC0 (q);
  }
}