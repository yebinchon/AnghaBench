#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_9__ {TYPE_2__ method; } ;
struct TYPE_11__ {TYPE_1__ input; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;
struct TYPE_12__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_4__ h2o_generator_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SEND_STATE_FINAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 

void FUNC5(h2o_req_t *req, const char *body, size_t len)
{
    static h2o_generator_t generator = {NULL, NULL};

    h2o_iovec_t buf = FUNC4(&req->pool, body, len);
    /* the function intentionally does not set the content length, since it may be used for generating 304 response, etc. */
    /* req->res.content_length = buf.len; */

    FUNC3(req, &generator);

    if (FUNC1(req->input.method.base, req->input.method.len, FUNC0("HEAD")))
        FUNC2(req, NULL, 0, H2O_SEND_STATE_FINAL);
    else
        FUNC2(req, &buf, 1, H2O_SEND_STATE_FINAL);
}