#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * _cb; int /*<<< orphan*/  _pending; } ;
typedef  TYPE_1__ h2o_hostinfo_getaddr_req_t ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ queue ; 

void FUNC5(h2o_hostinfo_getaddr_req_t *req)
{
    int should_free = 0;

    FUNC3(&queue.mutex);

    if (FUNC1(&req->_pending)) {
        FUNC2(&req->_pending);
        should_free = 1;
    } else {
        req->_cb = NULL;
    }

    FUNC4(&queue.mutex);

    if (should_free)
        FUNC0(req);
}