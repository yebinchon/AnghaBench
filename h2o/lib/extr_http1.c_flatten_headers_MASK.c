#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int status; char* reason; int /*<<< orphan*/  content_length; } ;
struct TYPE_13__ {TYPE_2__ res; TYPE_1__* conn; } ;
typedef  TYPE_5__ h2o_req_t ;
struct TYPE_14__ {TYPE_4__* globalconf; } ;
typedef  TYPE_6__ h2o_context_t ;
struct TYPE_11__ {char* base; scalar_t__ len; } ;
struct TYPE_12__ {TYPE_3__ server_name; } ;
struct TYPE_9__ {TYPE_6__* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static size_t FUNC3(char *buf, h2o_req_t *req, const char *connection)
{
    h2o_context_t *ctx = req->conn->ctx;
    char *dst = buf;

    FUNC0(req->res.status <= 999);

    /* send essential headers with the first chars uppercased for max. interoperability (#72) */
    if (req->res.content_length != SIZE_MAX) {
        dst += FUNC2(dst, "HTTP/1.1 %d %s\r\nConnection: %s\r\nContent-Length: %zu\r\n", req->res.status, req->res.reason,
                       connection, req->res.content_length);
    } else {
        dst += FUNC2(dst, "HTTP/1.1 %d %s\r\nConnection: %s\r\n", req->res.status, req->res.reason, connection);
    }
    if (ctx->globalconf->server_name.len) {
        dst += FUNC2(dst, "Server: %s\r\n", ctx->globalconf->server_name.base);
    }

    dst += FUNC1(dst, req, 1);
    *dst++ = '\r';
    *dst++ = '\n';

    return dst - buf;
}