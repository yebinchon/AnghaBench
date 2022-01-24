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
struct st_h2o_http1_finalostream_t {int /*<<< orphan*/  chunked_buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  headers; } ;
struct TYPE_6__ {int /*<<< orphan*/  pool; TYPE_1__ res; } ;
typedef  TYPE_2__ h2o_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_TRANSFER_ENCODING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct st_h2o_http1_finalostream_t *self, h2o_req_t *req)
{
    if (FUNC3(req)) {
        FUNC1(&req->pool, &req->res.headers, H2O_TOKEN_TRANSFER_ENCODING, NULL, FUNC0("chunked"));
        self->chunked_buf = FUNC2(&req->pool, 1, sizeof(size_t) * 2 + sizeof("\r\n"));
    }
}