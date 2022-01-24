#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* on_answer ) (void**,void**) ;} ;
struct rpc_query {TYPE_1__ type; int /*<<< orphan*/  ev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_query*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_query*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (void**,void**) ; 

void FUNC4 (struct rpc_query *q) {
  FUNC2 (&q->ev);
  int r = 0;
  if (q->type.on_answer) {
    r = (*q->type.on_answer) (((void **)q->type.on_answer) + 1, (void **)&q);
  } else {
    FUNC0 (q);
  }
  if (r <= 0) {
    FUNC1 (q);
  }
}