
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int status; char* reason; int content_length; } ;
struct TYPE_13__ {TYPE_2__ res; TYPE_1__* conn; } ;
typedef TYPE_5__ h2o_req_t ;
struct TYPE_14__ {TYPE_4__* globalconf; } ;
typedef TYPE_6__ h2o_context_t ;
struct TYPE_11__ {char* base; scalar_t__ len; } ;
struct TYPE_12__ {TYPE_3__ server_name; } ;
struct TYPE_9__ {TYPE_6__* ctx; } ;


 int SIZE_MAX ;
 int assert (int) ;
 int flatten_res_headers (char*,TYPE_5__*,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static size_t flatten_headers(char *buf, h2o_req_t *req, const char *connection)
{
    h2o_context_t *ctx = req->conn->ctx;
    char *dst = buf;

    assert(req->res.status <= 999);


    if (req->res.content_length != SIZE_MAX) {
        dst += sprintf(dst, "HTTP/1.1 %d %s\r\nConnection: %s\r\nContent-Length: %zu\r\n", req->res.status, req->res.reason,
                       connection, req->res.content_length);
    } else {
        dst += sprintf(dst, "HTTP/1.1 %d %s\r\nConnection: %s\r\n", req->res.status, req->res.reason, connection);
    }
    if (ctx->globalconf->server_name.len) {
        dst += sprintf(dst, "Server: %s\r\n", ctx->globalconf->server_name.base);
    }

    dst += flatten_res_headers(dst, req, 1);
    *dst++ = '\r';
    *dst++ = '\n';

    return dst - buf;
}
