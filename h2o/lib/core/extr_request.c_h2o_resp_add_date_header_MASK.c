#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* str; } ;
typedef  TYPE_4__ h2o_timestamp_t ;
struct TYPE_9__ {int /*<<< orphan*/  headers; } ;
struct TYPE_12__ {TYPE_2__ res; int /*<<< orphan*/  pool; TYPE_1__* conn; } ;
typedef  TYPE_5__ h2o_req_t ;
struct TYPE_10__ {int /*<<< orphan*/  rfc1123; } ;
struct TYPE_8__ {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_TOKEN_DATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(h2o_req_t *req)
{
    h2o_timestamp_t ts = FUNC1(req->conn->ctx, &req->pool);
    FUNC0(&req->pool, &req->res.headers, H2O_TOKEN_DATE, NULL, ts.str->rfc1123, FUNC2(ts.str->rfc1123));
}