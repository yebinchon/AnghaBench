#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_token_t ;
struct TYPE_7__ {int /*<<< orphan*/  headers; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_mruby_shared_context_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * base; } ;
typedef  TYPE_2__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  const* H2O_TOKEN_CONTENT_LENGTH ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(h2o_mruby_shared_context_t *shared_ctx, h2o_iovec_t *env_key, h2o_iovec_t value, void *_req)
{
    h2o_req_t *req = _req;
    const h2o_token_t *token;

    /* convert env key to header name (lower case) */
    h2o_iovec_t name = FUNC0(&req->pool, env_key->base, env_key->len);
    if (name.base == NULL)
        return 0;

    if ((token = FUNC3(name.base, name.len)) != NULL) {
        if (token == H2O_TOKEN_CONTENT_LENGTH) {
            /* skip. use CONTENT_LENGTH instead of HTTP_CONTENT_LENGTH */
        } else {
            value = FUNC4(&req->pool, value.base, value.len);
            FUNC1(&req->pool, &req->headers, token, NULL, value.base, value.len);
        }
    } else {
        value = FUNC4(&req->pool, value.base, value.len);
        FUNC2(&req->pool, &req->headers, name.base, name.len, 0, NULL, value.base, value.len);
    }

    return 0;
}