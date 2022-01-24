#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* conn; int /*<<< orphan*/ * handler; TYPE_3__* pathconf; } ;
typedef  TYPE_4__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
struct TYPE_11__ {int size; int /*<<< orphan*/ ** entries; } ;
struct TYPE_12__ {TYPE_2__ handlers; } ;
struct TYPE_10__ {int /*<<< orphan*/  hosts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

void FUNC5(h2o_req_t *req)
{
    FUNC2(req);
    FUNC4(req);

    if (req->handler != NULL) {
        h2o_handler_t **handler = req->pathconf->handlers.entries, **end = handler + req->pathconf->handlers.size;
        for (;; ++handler) {
            FUNC0(handler != end);
            if (*handler == req->handler)
                break;
        }
        FUNC1(req, handler);
    } else {
        FUNC3(req, req->conn->hosts);
    }
}