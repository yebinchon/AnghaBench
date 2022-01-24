#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* _parent; } ;
struct TYPE_12__ {scalar_t__ _active_cnt; TYPE_1__ node; int /*<<< orphan*/  weight; int /*<<< orphan*/  _queue_node; int /*<<< orphan*/  _all_link; } ;
typedef  TYPE_2__ h2o_http2_scheduler_openref_t ;
struct TYPE_13__ {int /*<<< orphan*/  _all_refs; } ;
typedef  TYPE_3__ h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(h2o_http2_scheduler_openref_t *ref, h2o_http2_scheduler_node_t *new_parent, int exclusive)
{
    /* rebind _all_link */
    FUNC4(&ref->_all_link);
    FUNC3(&new_parent->_all_refs, &ref->_all_link);
    /* rebind to WRR (as well as adjust active_cnt) */
    if (ref->_active_cnt != 0) {
        FUNC7(&ref->_queue_node);
        FUNC6(FUNC2(new_parent), &ref->_queue_node, ref->weight);
        FUNC1(ref->node._parent);
        FUNC5(new_parent);
    }
    /* update the backlinks */
    ref->node._parent = new_parent;

    if (exclusive)
        FUNC0(new_parent, ref);
}