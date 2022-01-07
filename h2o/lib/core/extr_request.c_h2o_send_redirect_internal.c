
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int len; int * base; } ;
struct TYPE_13__ {int path; TYPE_6__ authority; int * scheme; } ;
typedef TYPE_3__ h2o_url_t ;
struct TYPE_14__ {int * overrides; int pool; int path; TYPE_6__ authority; TYPE_2__* hostconf; int * scheme; } ;
typedef TYPE_4__ h2o_req_t ;
typedef int h2o_iovec_t ;
struct TYPE_11__ {TYPE_6__ hostport; } ;
struct TYPE_12__ {TYPE_1__ authority; } ;


 int h2o_concat (int *,int ,int ) ;
 scalar_t__ h2o_lcstris (int *,int ,int *,int ) ;
 int h2o_reprocess_request_deferred (TYPE_4__*,int ,int *,TYPE_6__,int ,int *,int) ;
 int h2o_send_error_deferred_502 (TYPE_4__*,char*,char*,int ) ;
 TYPE_6__ h2o_strdup (int *,int *,int ) ;
 scalar_t__ h2o_url_parse_relative (char const*,size_t,TYPE_3__*) ;
 int h2o_url_resolve_path (int *,int *) ;

void h2o_send_redirect_internal(h2o_req_t *req, h2o_iovec_t method, const char *url_str, size_t url_len, int preserve_overrides)
{
    h2o_url_t url;


    if (h2o_url_parse_relative(url_str, url_len, &url) != 0) {

        h2o_send_error_deferred_502(req, "Gateway Error", "internal error", 0);
        return;
    }

    if (url.scheme == ((void*)0))
        url.scheme = req->scheme;
    if (url.authority.base == ((void*)0)) {
        if (req->hostconf != ((void*)0))
            url.authority = req->hostconf->authority.hostport;
        else
            url.authority = req->authority;
    } else {
        if (h2o_lcstris(url.authority.base, url.authority.len, req->authority.base, req->authority.len)) {
            url.authority = req->authority;
        } else {
            url.authority = h2o_strdup(&req->pool, url.authority.base, url.authority.len);
            preserve_overrides = 0;
        }
    }
    h2o_iovec_t base_path = req->path;
    h2o_url_resolve_path(&base_path, &url.path);
    url.path = h2o_concat(&req->pool, base_path, url.path);

    h2o_reprocess_request_deferred(req, method, url.scheme, url.authority, url.path, preserve_overrides ? req->overrides : ((void*)0), 1);
}
