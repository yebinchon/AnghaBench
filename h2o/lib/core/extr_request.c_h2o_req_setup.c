
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_17__ {int len; int base; } ;
struct TYPE_13__ {int * base; } ;
struct TYPE_18__ {int query_at; TYPE_4__ path; TYPE_12__ authority; int method; TYPE_3__* scheme; } ;
struct TYPE_19__ {int query_at; TYPE_5__ input; int norm_indexes; int pool; int path_normalized; TYPE_4__ path; TYPE_12__ authority; int method; TYPE_3__* scheme; TYPE_1__* conn; int processed_at; } ;
typedef TYPE_6__ h2o_req_t ;
struct TYPE_15__ {TYPE_12__ hostport; } ;
struct TYPE_20__ {TYPE_2__ authority; } ;
typedef TYPE_7__ h2o_hostconf_t ;
typedef int h2o_context_t ;
struct TYPE_16__ {int default_port; } ;
struct TYPE_14__ {TYPE_7__** hosts; int * ctx; } ;


 TYPE_7__* find_hostconf (TYPE_7__**,TYPE_12__,int ) ;
 int h2o_get_timestamp (int *,int *) ;
 int h2o_url_normalize_path (int *,int ,int ,int *,int *) ;

h2o_hostconf_t *h2o_req_setup(h2o_req_t *req)
{
    h2o_context_t *ctx = req->conn->ctx;
    h2o_hostconf_t *hostconf;

    req->processed_at = h2o_get_timestamp(ctx, &req->pool);


    if (req->input.authority.base != ((void*)0)) {
        if (req->conn->hosts[1] == ((void*)0) ||
            (hostconf = find_hostconf(req->conn->hosts, req->input.authority, req->input.scheme->default_port)) == ((void*)0))
            hostconf = *req->conn->hosts;
    } else {

        hostconf = *req->conn->hosts;
        req->input.authority = hostconf->authority.hostport;
    }

    req->scheme = req->input.scheme;
    req->method = req->input.method;
    req->authority = req->input.authority;
    req->path = req->input.path;
    req->path_normalized =
        h2o_url_normalize_path(&req->pool, req->input.path.base, req->input.path.len, &req->query_at, &req->norm_indexes);
    req->input.query_at = req->query_at;

    return hostconf;
}
