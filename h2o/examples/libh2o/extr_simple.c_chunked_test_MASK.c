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
struct TYPE_9__ {int status; char* reason; int /*<<< orphan*/  headers; } ;
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_11__ {TYPE_1__ res; int /*<<< orphan*/  pool; TYPE_2__ method; } ;
typedef  TYPE_3__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
struct TYPE_12__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_4__ h2o_generator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_CONTENT_TYPE ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(h2o_handler_t *self, h2o_req_t *req)
{
    static h2o_generator_t generator = {NULL, NULL};

    if (!FUNC2(req->method.base, req->method.len, FUNC0("GET")))
        return -1;

    h2o_iovec_t body = FUNC5(&req->pool, "hello world\n", SIZE_MAX);
    req->res.status = 200;
    req->res.reason = "OK";
    FUNC1(&req->pool, &req->res.headers, H2O_TOKEN_CONTENT_TYPE, NULL, FUNC0("text/plain"));
    FUNC4(req, &generator);
    FUNC3(req, &body, 1, 1);

    return 0;
}