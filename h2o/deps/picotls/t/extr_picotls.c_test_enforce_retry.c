
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


typedef int ptls_t ;
struct TYPE_17__ {char* key; int additional_data; } ;
struct TYPE_18__ {int enforce_retry; int retry_uses_cookie; TYPE_4__ cookie; } ;
struct TYPE_16__ {int * member_0; } ;
struct TYPE_15__ {TYPE_3__ member_0; } ;
struct TYPE_14__ {TYPE_2__ member_0; } ;
struct TYPE_19__ {TYPE_5__ server; TYPE_1__ member_0; } ;
typedef TYPE_6__ ptls_handshake_properties_t ;
struct TYPE_20__ {size_t off; int * base; } ;
typedef TYPE_7__ ptls_buffer_t ;


 int PTLS_ERROR_IN_PROGRESS ;
 int PTLS_ERROR_STATELESS_RETRY ;
 int ctx ;
 scalar_t__ memcmp (int *,char*,int) ;
 int ok (int) ;
 int ptls_buffer_dispose (TYPE_7__*) ;
 int ptls_buffer_init (TYPE_7__*,char*,int ) ;
 int ptls_free (int *) ;
 int ptls_handshake (int *,TYPE_7__*,int *,size_t*,TYPE_6__*) ;
 int ptls_iovec_init (char*,int) ;
 int * ptls_new (int ,int) ;
 int ptls_receive (int *,TYPE_7__*,int *,size_t*) ;
 int ptls_send (int *,TYPE_7__*,char*,int) ;

__attribute__((used)) static void test_enforce_retry(int use_cookie)
{
    ptls_t *client, *server;
    ptls_handshake_properties_t server_hs_prop = {{{{((void*)0)}}}};
    ptls_buffer_t cbuf, sbuf, decbuf;
    size_t consumed;
    int ret;

    server_hs_prop.server.cookie.key = "0123456789abcdef0123456789abcdef0123456789abcdef";
    server_hs_prop.server.cookie.additional_data = ptls_iovec_init("1.2.3.4:1234", 12);
    server_hs_prop.server.enforce_retry = 1;
    server_hs_prop.server.retry_uses_cookie = use_cookie;

    ptls_buffer_init(&cbuf, "", 0);
    ptls_buffer_init(&sbuf, "", 0);
    ptls_buffer_init(&decbuf, "", 0);

    client = ptls_new(ctx, 0);

    ret = ptls_handshake(client, &cbuf, ((void*)0), ((void*)0), ((void*)0));
    ok(ret == PTLS_ERROR_IN_PROGRESS);
    ok(cbuf.off != 0);

    server = ptls_new(ctx, 1);

    consumed = cbuf.off;
    ret = ptls_handshake(server, &sbuf, cbuf.base, &consumed, &server_hs_prop);
    cbuf.off = 0;

    if (use_cookie) {
        ok(ret == PTLS_ERROR_STATELESS_RETRY);
        ptls_free(server);
        server = ptls_new(ctx, 1);
    } else {
        ok(ret == PTLS_ERROR_IN_PROGRESS);
    }

    consumed = sbuf.off;
    ret = ptls_handshake(client, &cbuf, sbuf.base, &consumed, ((void*)0));
    ok(ret == PTLS_ERROR_IN_PROGRESS);
    ok(sbuf.off == consumed);
    sbuf.off = 0;

    consumed = cbuf.off;
    ret = ptls_handshake(server, &sbuf, cbuf.base, &consumed, &server_hs_prop);
    ok(ret == 0);
    ok(cbuf.off == consumed);
    cbuf.off = 0;

    consumed = sbuf.off;
    ret = ptls_handshake(client, &cbuf, sbuf.base, &consumed, ((void*)0));
    ok(ret == 0);
    ok(sbuf.off == consumed);
    sbuf.off = 0;

    ret = ptls_send(client, &cbuf, "hello world", 11);
    ok(ret == 0);

    consumed = cbuf.off;
    ret = ptls_receive(server, &decbuf, cbuf.base, &consumed);
    ok(ret == 0);
    ok(cbuf.off == consumed);
    cbuf.off = 0;

    ok(decbuf.off == 11);
    ok(memcmp(decbuf.base, "hello world", 11) == 0);
    decbuf.off = 0;

    ptls_free(client);
    ptls_free(server);

    ptls_buffer_dispose(&cbuf);
    ptls_buffer_dispose(&sbuf);
    ptls_buffer_dispose(&decbuf);
}
