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
struct TYPE_2__ {int /*<<< orphan*/  (* on_free ) (void**,void**) ;} ;
struct rpc_query {TYPE_1__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_query*) ; 
 int /*<<< orphan*/  FUNC1 (void**,void**) ; 

void FUNC2 (struct rpc_query *q) {
  if (q->type.on_free) {
    (*q->type.on_free) (((void **)q->type.on_free) + 1, (void **)&q);
  } else {
    FUNC0 (q);
  }
}