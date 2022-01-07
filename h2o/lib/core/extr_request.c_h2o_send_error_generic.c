
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int status; char const* reason; int headers; int content_length; } ;
struct TYPE_11__ {TYPE_1__ res; int pool; scalar_t__ http1_is_persistent; int * pathconf; } ;
typedef TYPE_2__ h2o_req_t ;
struct TYPE_12__ {int fallback_path; } ;
typedef TYPE_3__ h2o_hostconf_t ;


 int H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION ;
 int H2O_SEND_ERROR_KEEP_HEADERS ;
 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_CONTENT_TYPE ;
 int SIZE_MAX ;
 int h2o_add_header (int *,int *,int ,int *,int ) ;
 int h2o_req_bind_conf (TYPE_2__*,TYPE_3__*,int *) ;
 TYPE_3__* h2o_req_setup (TYPE_2__*) ;
 int h2o_send_inline (TYPE_2__*,char const*,int ) ;
 int memset (int *,int ,int) ;
 int strlen (char const*) ;

void h2o_send_error_generic(h2o_req_t *req, int status, const char *reason, const char *body, int flags)
{
    if (req->pathconf == ((void*)0)) {
        h2o_hostconf_t *hostconf = h2o_req_setup(req);
        h2o_req_bind_conf(req, hostconf, &hostconf->fallback_path);
    }

    if ((flags & H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION) != 0)
        req->http1_is_persistent = 0;

    req->res.status = status;
    req->res.reason = reason;
    req->res.content_length = strlen(body);

    if ((flags & H2O_SEND_ERROR_KEEP_HEADERS) == 0)
        memset(&req->res.headers, 0, sizeof(req->res.headers));

    h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_CONTENT_TYPE, ((void*)0), H2O_STRLIT("text/plain; charset=utf-8"));

    h2o_send_inline(req, body, SIZE_MAX);
}
