#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int process_called; TYPE_2__* pathconf; } ;
typedef  TYPE_3__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_hostconf_t ;
struct TYPE_8__ {int /*<<< orphan*/  entries; } ;
struct TYPE_9__ {TYPE_1__ handlers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC4(h2o_req_t *req)
{
    FUNC0(!req->process_called);
    req->process_called = 1;

    if (req->pathconf == NULL) {
        h2o_hostconf_t *hostconf = FUNC2(req);
        FUNC3(req, hostconf);
    }
    FUNC1(req, req->pathconf->handlers.entries);
}