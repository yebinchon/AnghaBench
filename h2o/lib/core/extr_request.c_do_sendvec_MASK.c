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
typedef  int /*<<< orphan*/  h2o_sendvec_t ;
typedef  int /*<<< orphan*/  h2o_send_state_t ;
struct TYPE_5__ {TYPE_2__* _ostr_top; int /*<<< orphan*/ * _generator; } ;
typedef  TYPE_1__ h2o_req_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* do_send ) (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(h2o_req_t *req, h2o_sendvec_t *bufs, size_t bufcnt, h2o_send_state_t state)
{
    FUNC0(req->_generator != NULL);

    if (!FUNC1(state))
        req->_generator = NULL;

    req->_ostr_top->do_send(req->_ostr_top, req, bufs, bufcnt, state);
}