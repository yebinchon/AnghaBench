#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sm_sendq {int dummy; } ;
typedef  TYPE_1__* sm_sendq_t ;
struct TYPE_5__ {struct TYPE_5__* begin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2(sm_sendq_t sendq) {
  if (sendq) {
    FUNC0(sendq->begin);
    FUNC1(sendq, 0, sizeof(struct sm_sendq));
    FUNC0(sendq);
  }
}