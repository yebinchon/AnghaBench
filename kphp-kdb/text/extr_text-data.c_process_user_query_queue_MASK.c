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
struct TYPE_4__ {struct conn_query* first_q; } ;
typedef  TYPE_1__ user_t ;
struct conn_query {struct conn_query* next; } ;

/* Variables and functions */
 struct conn_query* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct conn_query*) ; 
 int /*<<< orphan*/  pending_http_queries ; 
 int /*<<< orphan*/  FUNC2 (struct conn_query*,int) ; 

int FUNC3 (user_t *U) {
  struct conn_query *tmp, *tnext;

  for (tmp = U->first_q; tmp != FUNC0 (U); tmp = tnext) {
    tnext = tmp->next;
    //fprintf (stderr, "scanning user history queue %p,next = %p\n", tmp, tnext);
    pending_http_queries--;
    FUNC1 (tmp);
    FUNC2 (tmp, sizeof (*tmp));
  }

  return 0;
}