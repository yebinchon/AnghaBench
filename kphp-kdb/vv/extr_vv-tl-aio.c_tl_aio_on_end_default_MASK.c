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
struct conn_query {struct tl_saved_query* extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  finished_aio_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tl_saved_query*) ; 
 int /*<<< orphan*/  FUNC1 (struct conn_query*) ; 

int FUNC2 (struct conn_query *Q) {
//  struct tl_saved_query *s = q->extra;
//  struct connection *c = s->c;
  struct tl_saved_query *q = Q->extra;
  q->wait_num --;
  if (!q->wait_num && !q->failed) {
    finished_aio_queue = FUNC0 (finished_aio_queue, q);
  }
  FUNC1 (Q);
  return 0;
}