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
typedef  int /*<<< orphan*/  h2o_http2_scheduler_run_cb ;
struct TYPE_4__ {int /*<<< orphan*/ * _queue; } ;
typedef  TYPE_1__ h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(h2o_http2_scheduler_node_t *root, h2o_http2_scheduler_run_cb cb, void *cb_arg)
{
    if (root->_queue != NULL) {
        while (!FUNC1(root->_queue)) {
            int bail_out = FUNC0(root, cb, cb_arg);
            if (bail_out)
                return bail_out;
        }
    }
    return 0;
}