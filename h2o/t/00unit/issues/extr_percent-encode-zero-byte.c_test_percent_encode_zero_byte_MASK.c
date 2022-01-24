#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  len; } ;
struct TYPE_12__ {int /*<<< orphan*/  pool; TYPE_3__* pathconf; TYPE_5__ path_normalized; int /*<<< orphan*/  path; int /*<<< orphan*/  query_at; } ;
typedef  TYPE_2__ h2o_req_t ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {TYPE_1__ member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_3__ h2o_pathconf_t ;
struct TYPE_14__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_4__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_5__,TYPE_5__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
    h2o_pathconf_t pathconf = {NULL, FUNC0("/abc")};
    h2o_req_t req;
    h2o_iovec_t dest;

    FUNC3(&req, NULL, NULL);

    /* basic pattern */
    req.path_normalized = FUNC4(FUNC0("/abc/mno\0xyz"));
    req.query_at = req.path_normalized.len;
    req.path = FUNC2(&req.pool, req.path_normalized, FUNC4(FUNC0("?q")));
    req.pathconf = &pathconf;
    dest = FUNC1(&req, FUNC0("/def"), 1);
    FUNC7(FUNC6(dest.base, dest.len, FUNC0("/def/mno%00xyz?q")));
    dest = FUNC1(&req, FUNC0("/def/"), 1);
    FUNC7(FUNC6(dest.base, dest.len, FUNC0("/def/mno%00xyz?q")));

    FUNC5(&req.pool);
}