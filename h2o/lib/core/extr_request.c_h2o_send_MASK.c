#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_sendvec_t ;
typedef  int /*<<< orphan*/  h2o_send_state_t ;
typedef  int /*<<< orphan*/  h2o_req_t ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(h2o_req_t *req, h2o_iovec_t *bufs, size_t bufcnt, h2o_send_state_t state)
{
    h2o_sendvec_t *vecs = FUNC0(sizeof(*vecs) * bufcnt);
    size_t i;

    for (i = 0; i != bufcnt; ++i)
        FUNC2(vecs + i, bufs[i].base, bufs[i].len);

    FUNC1(req, vecs, bufcnt, state);
}