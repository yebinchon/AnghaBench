#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct conn_query {scalar_t__ extra; } ;
struct TYPE_5__ {TYPE_1__* func; } ;
typedef  TYPE_2__ mc_ansgen_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* end ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int FUNC0 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2 (struct conn_query *q) {
  mc_ansgen_t *ansgen = (mc_ansgen_t *)q->extra;
  ansgen->func->end (ansgen);

  return FUNC0 (q);
}