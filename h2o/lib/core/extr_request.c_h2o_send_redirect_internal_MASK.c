#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * base; } ;
struct TYPE_13__ {int /*<<< orphan*/  path; TYPE_6__ authority; int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_3__ h2o_url_t ;
struct TYPE_14__ {int /*<<< orphan*/ * overrides; int /*<<< orphan*/  pool; int /*<<< orphan*/  path; TYPE_6__ authority; TYPE_2__* hostconf; int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_4__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;
struct TYPE_11__ {TYPE_6__ hostport; } ;
struct TYPE_12__ {TYPE_1__ authority; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_6__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_6__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,size_t,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(h2o_req_t *req, h2o_iovec_t method, const char *url_str, size_t url_len, int preserve_overrides)
{
    h2o_url_t url;

    /* parse the location URL */
    if (FUNC5(url_str, url_len, &url) != 0) {
        /* TODO log h2o_error_printf("[proxy] cannot handle location header: %.*s\n", (int)url_len, url); */
        FUNC3(req, "Gateway Error", "internal error", 0);
        return;
    }
    /* convert the location to absolute (while creating copies of the values passed to the deferred call) */
    if (url.scheme == NULL)
        url.scheme = req->scheme;
    if (url.authority.base == NULL) {
        if (req->hostconf != NULL)
            url.authority = req->hostconf->authority.hostport;
        else
            url.authority = req->authority;
    } else {
        if (FUNC1(url.authority.base, url.authority.len, req->authority.base, req->authority.len)) {
            url.authority = req->authority;
        } else {
            url.authority = FUNC4(&req->pool, url.authority.base, url.authority.len);
            preserve_overrides = 0;
        }
    }
    h2o_iovec_t base_path = req->path;
    FUNC6(&base_path, &url.path);
    url.path = FUNC0(&req->pool, base_path, url.path);

    FUNC2(req, method, url.scheme, url.authority, url.path, preserve_overrides ? req->overrides : NULL, 1);
}