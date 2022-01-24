#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  terminated; } ;
struct gather_data {TYPE_2__* c; TYPE_1__ Out; } ;
struct conn_query {scalar_t__ req_generation; } ;
struct TYPE_4__ {scalar_t__ generation; } ;

/* Variables and functions */
 struct gather_data* FUNC0 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC1 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC2 (struct gather_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct gather_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct conn_query*,int) ; 

int FUNC5 (struct conn_query *q) {
  struct gather_data *G = FUNC0(q);
  if (!G->Out.terminated) {
    return 0;
  }
  if (G->c->generation == q->req_generation) {
    FUNC3 (G);
  }
  FUNC1 (q);
  FUNC2 (G);
  FUNC4 (q, sizeof (struct conn_query));
  return 0;
}