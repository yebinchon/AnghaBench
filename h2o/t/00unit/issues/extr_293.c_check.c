
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int ssize_t ;
typedef int h2o_url_scheme_t ;
struct TYPE_15__ {TYPE_4__* entries; } ;
struct TYPE_20__ {int status; TYPE_12__ headers; } ;
struct TYPE_17__ {void* path; void* authority; int const* scheme; void* method; } ;
struct TYPE_21__ {TYPE_5__ res; TYPE_2__ input; } ;
struct TYPE_22__ {TYPE_6__ req; } ;
typedef TYPE_7__ h2o_loopback_conn_t ;
struct TYPE_18__ {int len; int base; } ;
struct TYPE_19__ {TYPE_3__ value; } ;
struct TYPE_16__ {int hosts; } ;
struct TYPE_14__ {TYPE_1__* globalconf; } ;


 int H2O_STRLIT (char*) ;
 TYPE_11__ ctx ;
 int h2o_find_header_by_str (TYPE_12__*,int ,int) ;
 void* h2o_iovec_init (char const*,...) ;
 TYPE_7__* h2o_loopback_create (TYPE_11__*,int ) ;
 int h2o_loopback_destroy (TYPE_7__*) ;
 int h2o_loopback_run_loop (TYPE_7__*) ;
 int h2o_memis (int ,int ,char const*,int ) ;
 int ok (int) ;
 int strlen (char const*) ;

__attribute__((used)) static void check(const h2o_url_scheme_t *scheme, const char *host, const char *expected)
{
    h2o_loopback_conn_t *conn = h2o_loopback_create(&ctx, ctx.globalconf->hosts);

    conn->req.input.method = h2o_iovec_init(H2O_STRLIT("GET"));
    conn->req.input.scheme = scheme;
    conn->req.input.authority = h2o_iovec_init(host, strlen(host));
    conn->req.input.path = h2o_iovec_init(H2O_STRLIT("/"));
    h2o_loopback_run_loop(conn);
    ok(conn->req.res.status == 200);

    ssize_t index = h2o_find_header_by_str(&conn->req.res.headers, H2O_STRLIT("x-authority"), -1);
    ok(index != -1);

    if (index != -1) {
        ok(h2o_memis(conn->req.res.headers.entries[index].value.base, conn->req.res.headers.entries[index].value.len, expected,
                     strlen(expected)));
    }

    h2o_loopback_destroy(conn);
}
