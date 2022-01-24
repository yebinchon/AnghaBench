#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_9__ {struct TYPE_9__* _parent; int /*<<< orphan*/  _all_refs; } ;
struct TYPE_8__ {int weight; TYPE_2__ node; } ;
typedef  TYPE_1__ h2o_http2_scheduler_openref_t ;
typedef  TYPE_2__ h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(h2o_http2_scheduler_openref_t *ref, h2o_http2_scheduler_node_t *new_parent, uint16_t weight,
                                int exclusive)
{
    FUNC0(FUNC2(ref));
    FUNC0(&ref->node != new_parent);
    FUNC0(1 <= weight);
    FUNC0(weight <= 257);

    /* do nothing if there'd be no change at all */
    if (ref->node._parent == new_parent && ref->weight == weight && !exclusive)
        return;

    ref->weight = weight;

    /* if new_parent is dependent to ref, make new_parent a sibling of ref before applying the final transition (see draft-16
       5.3.3) */
    if (!FUNC3(&ref->node._all_refs)) {
        h2o_http2_scheduler_node_t *t;
        for (t = new_parent; t->_parent != NULL; t = t->_parent) {
            if (t->_parent == &ref->node) {
                /* quoting the spec: "The moved dependency retains its weight." */
                h2o_http2_scheduler_openref_t *new_parent_ref = (void *)new_parent;
                FUNC1(new_parent_ref, ref->node._parent, 0);
                break;
            }
        }
    }

    FUNC1(ref, new_parent, exclusive);
}