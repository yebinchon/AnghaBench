#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct st_requests_status_ctx_t* base; } ;
struct st_requests_status_ctx_t {int /*<<< orphan*/  mutex; TYPE_6__ req_data; int /*<<< orphan*/ * logconf; } ;
struct TYPE_7__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ h2o_req_t ;
struct TYPE_8__ {int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_requests_status_ctx_t*) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static h2o_iovec_t FUNC6(void *priv, h2o_globalconf_t *gconf, h2o_req_t *req)
{
    h2o_iovec_t ret = {NULL};
    struct st_requests_status_ctx_t *rsc = priv;

    if (rsc->logconf != NULL) {
        ret = FUNC2(&req->pool, FUNC3(FUNC0(",\n \"requests\": [")), rsc->req_data,
                         FUNC3(FUNC0("\n ]")));
        FUNC4(rsc->logconf);
    }
    FUNC1(rsc->req_data.base);
    FUNC5(&rsc->mutex);

    FUNC1(rsc);
    return ret;
}