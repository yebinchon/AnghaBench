#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct phr_header {int* name; int name_len; char* value; int value_len; } ;
struct TYPE_16__ {scalar_t__ proxy_should_drop_for_res; } ;
struct TYPE_18__ {TYPE_1__ flags; } ;
typedef  TYPE_3__ h2o_token_t ;
struct TYPE_17__ {int status; char* reason; int /*<<< orphan*/  headers; int /*<<< orphan*/  content_length; } ;
struct TYPE_19__ {TYPE_2__ res; int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ h2o_req_t ;
struct TYPE_20__ {char* base; int len; } ;
typedef  TYPE_5__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__ const* H2O_TOKEN_CONTENT_LENGTH ; 
 int /*<<< orphan*/  H2O_TOKEN_DATE ; 
 TYPE_3__ const* H2O_TOKEN_LINK ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_5__ FUNC5 (int*,int) ; 
 TYPE_3__* FUNC6 (int*,int) ; 
 scalar_t__ FUNC7 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 TYPE_5__ FUNC11 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 

__attribute__((used)) static int FUNC14(h2o_req_t *req, struct phr_header *headers, size_t num_headers)
{
    size_t i;

    /* set the defaults */
    req->res.status = 200;
    req->res.reason = "OK";
    req->res.content_length = SIZE_MAX;

    for (i = 0; i != num_headers; ++i) {
        const h2o_token_t *token;
        FUNC12((char *)headers[i].name, headers[i].name_len);
        if ((token = FUNC6(headers[i].name, headers[i].name_len)) != NULL) {
            if (token->flags.proxy_should_drop_for_res) {
                /* skip */
            } else if (token == H2O_TOKEN_CONTENT_LENGTH) {
                if (req->res.content_length != SIZE_MAX) {
                    FUNC9(req, MODULE_NAME, "received multiple content-length headers from fcgi");
                    return -1;
                }
                if ((req->res.content_length = FUNC13(headers[i].value, headers[i].value_len)) == SIZE_MAX) {
                    FUNC9(req, MODULE_NAME, "failed to parse content-length header sent from fcgi: %.*s",
                                      (int)headers[i].value_len, headers[i].value);
                    return -1;
                }
            } else {
                /*
                RFC 3875 defines three headers to have special meaning: Content-Type, Status, Location.
                Status is handled as below.
                Content-Type does not seem to have any need to be handled specially.
                RFC suggests abs-path-style Location headers should trigger an internal redirection, but is that how the web servers
                work?
                 */
                FUNC2(&req->pool, &req->res.headers, token, NULL,
                               FUNC11(&req->pool, headers[i].value, headers[i].value_len).base, headers[i].value_len);
                if (token == H2O_TOKEN_LINK)
                    FUNC8(req, headers[i].value, headers[i].value_len);
            }
        } else if (FUNC7(headers[i].name, headers[i].name_len, FUNC0("status"))) {
            h2o_iovec_t value = FUNC5(headers[i].value, headers[i].value_len);
            if (value.len < 3 || !(FUNC1(value.base[0]) && FUNC1(value.base[1]) && FUNC1(value.base[2])) ||
                (value.len >= 4 && value.base[3] != ' ')) {
                FUNC9(req, MODULE_NAME, "failed to parse Status header, got: %.*s", (int)value.len, value.base);
                return -1;
            }
            req->res.status = (value.base[0] - '0') * 100 + (value.base[1] - '0') * 10 + (value.base[2] - '0');
            req->res.reason = value.len >= 5 ? FUNC11(&req->pool, value.base + 4, value.len - 4).base : "OK";
        } else {
            h2o_iovec_t name_duped = FUNC11(&req->pool, headers[i].name, headers[i].name_len),
                        value_duped = FUNC11(&req->pool, headers[i].value, headers[i].value_len);
            FUNC3(&req->pool, &req->res.headers, name_duped.base, name_duped.len, 0, NULL, value_duped.base,
                                  value_duped.len);
        }
    }

    /* add date: if it's missing from the response */
    if (FUNC4(&req->res.headers, H2O_TOKEN_DATE, -1) == -1)
        FUNC10(req);

    return 0;
}