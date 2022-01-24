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
struct TYPE_5__ {int /*<<< orphan*/  headers; } ;
struct TYPE_6__ {TYPE_1__ res; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ h2o_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SEND_ERROR_KEEP_HEADERS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_ALLOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(h2o_req_t *req)
{
    FUNC1(&req->pool, &req->res.headers, H2O_TOKEN_ALLOW, NULL, FUNC0("GET, HEAD"));
    FUNC2(req, "Method Not Allowed", "method not allowed", H2O_SEND_ERROR_KEEP_HEADERS);
}