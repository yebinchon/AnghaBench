
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
struct TYPE_17__ {char* key; void* additional_data; } ;
struct TYPE_18__ {int enforce_retry; int retry_uses_cookie; TYPE_4__ cookie; } ;
struct TYPE_16__ {int * member_0; } ;
struct TYPE_15__ {TYPE_3__ member_0; } ;
struct TYPE_14__ {TYPE_2__ member_0; } ;
struct TYPE_19__ {TYPE_5__ server; TYPE_1__ member_0; } ;
typedef TYPE_6__ ptls_handshake_properties_t ;
struct TYPE_20__ {size_t off; int base; } ;
typedef TYPE_7__ ptls_buffer_t ;


 int PTLS_ALERT_HANDSHAKE_FAILURE ;
 int PTLS_ERROR_IN_PROGRESS ;
 int ctx_peer ;
 int ok (int) ;
 int ptls_buffer_dispose (TYPE_7__*) ;
 int ptls_buffer_init (TYPE_7__*,char*,int ) ;
 int ptls_free (int *) ;
 int ptls_handshake (int *,TYPE_7__*,int ,size_t*,TYPE_6__*) ;
 void* ptls_iovec_init (char*,int) ;
 int * ptls_new (int ,int) ;
 int * stateless_hrr_prepare (TYPE_7__*,TYPE_6__*) ;

__attribute__((used)) static void test_stateless_hrr_aad_change(void)
{
    ptls_t *client, *server;
    ptls_handshake_properties_t server_hs_prop = {{{{((void*)0)}}}};
    ptls_buffer_t cbuf, sbuf;
    size_t consumed;
    int ret;

    server_hs_prop.server.cookie.key = "0123456789abcdef0123456789abcdef0123456789abcdef";
    server_hs_prop.server.cookie.additional_data = ptls_iovec_init("1.2.3.4:1234", 12);
    server_hs_prop.server.enforce_retry = 1;
    server_hs_prop.server.retry_uses_cookie = 1;

    client = stateless_hrr_prepare(&sbuf, &server_hs_prop);
    ptls_buffer_init(&cbuf, "", 0);

    consumed = sbuf.off;
    ret = ptls_handshake(client, &cbuf, sbuf.base, &consumed, ((void*)0));
    ok(ret == PTLS_ERROR_IN_PROGRESS);
    ok(sbuf.off == consumed);
    sbuf.off = 0;

    server = ptls_new(ctx_peer, 1);
    server_hs_prop.server.cookie.additional_data = ptls_iovec_init("1.2.3.4:4321", 12);

    consumed = cbuf.off;
    ret = ptls_handshake(server, &sbuf, cbuf.base, &consumed, &server_hs_prop);
    ok(ret == PTLS_ALERT_HANDSHAKE_FAILURE);

    ptls_free(client);
    ptls_free(server);

    ptls_buffer_dispose(&cbuf);
    ptls_buffer_dispose(&sbuf);
}
