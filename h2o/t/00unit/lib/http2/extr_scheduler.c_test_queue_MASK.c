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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  h2o_http2_scheduler_queue_t ;
typedef  int /*<<< orphan*/  h2o_http2_scheduler_queue_node_t ;
struct TYPE_4__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_3__ {TYPE_2__ member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    h2o_http2_scheduler_queue_t drr;
    struct node_t {
        h2o_http2_scheduler_queue_node_t super;
        uint16_t weight;
        size_t cnt;
    } w256 = {{{NULL}}, 256}, w128 = {{{NULL}}, 128}, w32 = {{{NULL}}, 32}, w1 = {{{NULL}}, 1};
    size_t i;

    FUNC1(&drr);
    FUNC3(&drr, &w256.super, 256);
    FUNC3(&drr, &w128.super, 128);
    FUNC3(&drr, &w32.super, 32);
    FUNC3(&drr, &w1.super, 1);

    for (i = 0; i != (256 + 128 + 32 + 1) * 100; ++i) {
        struct node_t *popped = (struct node_t *)FUNC2(&drr);
        if (popped == NULL) {
            FUNC0(0);
            return;
        }
        ++popped->cnt;
        FUNC3(&drr, &popped->super, popped->weight);
    }

    FUNC0(w256.cnt == 25600);
    FUNC0(w128.cnt == 12800);
    FUNC0(w32.cnt == 3200);
    FUNC0(w1.cnt == 100);
}