#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int status; char* reason; int /*<<< orphan*/  headers; } ;
struct TYPE_14__ {TYPE_1__ res; int /*<<< orphan*/  pool; int /*<<< orphan*/  path_normalized; } ;
typedef  TYPE_2__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;
struct TYPE_15__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_3__ h2o_generator_t ;
struct TYPE_16__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_4__ h2o_buffer_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SEND_STATE_FINAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_CONTENT_TYPE ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(h2o_req_t *req, const char *path, size_t path_len, int is_get)
{
    static h2o_generator_t generator = {NULL, NULL};
    DIR *dp;
    h2o_buffer_t *body;
    h2o_iovec_t bodyvec;

    /* build html */
    if ((dp = FUNC10(path)) == NULL)
        return -1;
    body = FUNC1(&req->pool, req->path_normalized, dp);
    FUNC2(dp);

    if (body == NULL) {
        FUNC7(req, "Service Unavailable", "please try again later", 0);
        return 0;
    }

    bodyvec = FUNC5(body->bytes, body->size);
    FUNC4(body, &req->pool);

    /* send response */
    req->res.status = 200;
    req->res.reason = "OK";
    FUNC3(&req->pool, &req->res.headers, H2O_TOKEN_CONTENT_TYPE, NULL, FUNC0("text/html; charset=utf-8"));

    /* send headers */
    if (!is_get) {
        FUNC8(req, NULL, 0);
        return 0;
    }

    /* send data */
    FUNC9(req, &generator);
    FUNC6(req, &bodyvec, 1, H2O_SEND_STATE_FINAL);
    return 0;
}