#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_root_status_handler_t {int dummy; } ;
struct TYPE_21__ {int len; char const* base; } ;
struct TYPE_20__ {int /*<<< orphan*/  headers; } ;
struct TYPE_19__ {char const* base; int len; } ;
struct TYPE_22__ {int query_at; TYPE_5__ path; TYPE_4__ res; int /*<<< orphan*/  pool; TYPE_3__ path_normalized; TYPE_2__* pathconf; } ;
typedef  TYPE_6__ h2o_req_t ;
struct TYPE_23__ {scalar_t__ len; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; int /*<<< orphan*/  base; } ;
typedef  TYPE_7__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
struct TYPE_17__ {int len; char* base; } ;
struct TYPE_18__ {TYPE_1__ path; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_ROOT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_CACHE_CONTROL ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int SIZE_MAX ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_7__ FUNC4 (int /*<<< orphan*/ *,TYPE_7__,TYPE_7__) ; 
 int FUNC5 (TYPE_6__*,int,char*,int /*<<< orphan*/ ,TYPE_7__,int /*<<< orphan*/ ) ; 
 TYPE_7__ FUNC6 (char const*,...) ; 
 scalar_t__ FUNC7 (char const*,int,char*,...) ; 
 int FUNC8 (struct st_h2o_root_status_handler_t*,TYPE_6__*,TYPE_7__) ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(h2o_handler_t *_self, h2o_req_t *req)
{
    struct st_h2o_root_status_handler_t *self = (void *)_self;
    size_t prefix_len = req->pathconf->path.len - (req->pathconf->path.base[req->pathconf->path.len - 1] == '/');
    h2o_iovec_t local_path = FUNC6(req->path_normalized.base + prefix_len, req->path_normalized.len - prefix_len);

    if (local_path.len == 0 || FUNC7(local_path.base, local_path.len, FUNC0("/"))) {
        /* root of the handler returns HTML that renders the status */
        h2o_iovec_t fn;
        const char *root = FUNC2("H2O_ROOT");
        if (root == NULL)
            root = FUNC1(H2O_ROOT);
        fn = FUNC4(&req->pool, FUNC6(root, FUNC9(root)), FUNC6(FUNC0("/share/h2o/status/index.html")));
        FUNC3(&req->pool, &req->res.headers, H2O_TOKEN_CACHE_CONTROL, NULL, FUNC0("no-cache"));
        return FUNC5(req, 200, "OK", fn.base, FUNC6(FUNC0("text/html; charset=utf-8")), 0);
    } else if (FUNC7(local_path.base, local_path.len, FUNC0("/json"))) {
        int ret;
        /* "/json" maps to the JSON API */
        h2o_iovec_t status_list = {NULL, 0}; /* NULL means we'll show all statuses */
        if (req->query_at != SIZE_MAX && (req->path.len - req->query_at > 6)) {
            if (FUNC7(&req->path.base[req->query_at], 6, "?show=", 6)) {
                status_list = FUNC6(&req->path.base[req->query_at + 6], req->path.len - req->query_at - 6);
            }
        }
        ret = FUNC8(self, req, status_list);
        return ret;
    }

    return -1;
}