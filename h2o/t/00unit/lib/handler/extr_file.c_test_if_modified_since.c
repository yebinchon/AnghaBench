
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int ssize_t ;
struct TYPE_16__ {TYPE_2__* entries; } ;
struct TYPE_22__ {int status; TYPE_13__ headers; } ;
struct TYPE_20__ {void* path; void* method; } ;
struct TYPE_23__ {TYPE_6__ res; int headers; int pool; TYPE_4__ input; } ;
struct TYPE_24__ {TYPE_7__ req; TYPE_5__* body; } ;
typedef TYPE_8__ h2o_loopback_conn_t ;
struct TYPE_21__ {scalar_t__ size; } ;
struct TYPE_19__ {int hosts; } ;
struct TYPE_17__ {int len; int base; } ;
struct TYPE_18__ {TYPE_1__ value; } ;
struct TYPE_15__ {TYPE_3__* globalconf; } ;


 int H2O_STRLIT (char*) ;
 int H2O_TIMESTR_RFC1123_LEN ;
 int H2O_TOKEN_ETAG ;
 int H2O_TOKEN_IF_MODIFIED_SINCE ;
 int H2O_TOKEN_LAST_MODIFIED ;
 TYPE_12__ ctx ;
 int h2o_add_header (int *,int *,int ,int *,char*,...) ;
 int h2o_find_header (TYPE_13__*,int ,int) ;
 void* h2o_iovec_init (int ) ;
 TYPE_8__* h2o_loopback_create (TYPE_12__*,int ) ;
 int h2o_loopback_destroy (TYPE_8__*) ;
 int h2o_loopback_run_loop (TYPE_8__*) ;
 int memcpy (char*,int ,int) ;
 int ok (int) ;

__attribute__((used)) static void test_if_modified_since(void)
{
    char lm_date[H2O_TIMESTR_RFC1123_LEN + 1];

    {
        h2o_loopback_conn_t *conn = h2o_loopback_create(&ctx, ctx.globalconf->hosts);
        ssize_t lm_index;
        conn->req.input.method = h2o_iovec_init(H2O_STRLIT("GET"));
        conn->req.input.path = h2o_iovec_init(H2O_STRLIT("/"));
        h2o_loopback_run_loop(conn);
        ok(conn->req.res.status == 200);
        if ((lm_index = h2o_find_header(&conn->req.res.headers, H2O_TOKEN_LAST_MODIFIED, -1)) == -1) {
            ok(0);
            return;
        }
        ok(conn->req.res.headers.entries[lm_index].value.len == H2O_TIMESTR_RFC1123_LEN);
        memcpy(lm_date, conn->req.res.headers.entries[lm_index].value.base, H2O_TIMESTR_RFC1123_LEN);
        lm_date[H2O_TIMESTR_RFC1123_LEN] = '\0';
        h2o_loopback_destroy(conn);
    }

    {
        h2o_loopback_conn_t *conn = h2o_loopback_create(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = h2o_iovec_init(H2O_STRLIT("GET"));
        conn->req.input.path = h2o_iovec_init(H2O_STRLIT("/"));
        h2o_add_header(&conn->req.pool, &conn->req.headers, H2O_TOKEN_IF_MODIFIED_SINCE, ((void*)0), lm_date, H2O_TIMESTR_RFC1123_LEN);
        h2o_loopback_run_loop(conn);
        ok(conn->req.res.status == 304);
        ok(conn->body->size == 0);
        ok(h2o_find_header(&conn->req.res.headers, H2O_TOKEN_ETAG, -1) != -1);
        h2o_loopback_destroy(conn);
    }

    {
        h2o_loopback_conn_t *conn = h2o_loopback_create(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = h2o_iovec_init(H2O_STRLIT("GET"));
        conn->req.input.path = h2o_iovec_init(H2O_STRLIT("/"));
        h2o_add_header(&conn->req.pool, &conn->req.headers, H2O_TOKEN_IF_MODIFIED_SINCE, ((void*)0),
                       H2O_STRLIT("Sun, 06 Nov 1994 08:49:37 GMT"));
        h2o_loopback_run_loop(conn);
        ok(conn->req.res.status == 200);
        h2o_loopback_destroy(conn);
    }

    {
        h2o_loopback_conn_t *conn = h2o_loopback_create(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = h2o_iovec_init(H2O_STRLIT("GET"));
        conn->req.input.path = h2o_iovec_init(H2O_STRLIT("/"));
        h2o_add_header(&conn->req.pool, &conn->req.headers, H2O_TOKEN_IF_MODIFIED_SINCE, ((void*)0),
                       H2O_STRLIT("Wed, 18 May 2033 12:33:20 GMT"));
        h2o_loopback_run_loop(conn);
        ok(conn->req.res.status == 304);
        ok(conn->body->size == 0);
        ok(h2o_find_header(&conn->req.res.headers, H2O_TOKEN_ETAG, -1) != -1);
        h2o_loopback_destroy(conn);
    }
}
