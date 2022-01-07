
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ptls_t ;
typedef int ptls_handshake_properties_t ;
struct TYPE_6__ {size_t off; int * base; } ;
typedef TYPE_1__ ptls_buffer_t ;


 int PTLS_ERROR_IN_PROGRESS ;
 int PTLS_ERROR_STATELESS_RETRY ;
 int ctx ;
 int ctx_peer ;
 int ok (int) ;
 int ptls_buffer_dispose (TYPE_1__*) ;
 int ptls_buffer_init (TYPE_1__*,char*,int ) ;
 int ptls_free (int *) ;
 int ptls_handshake (int *,TYPE_1__*,int *,size_t*,int *) ;
 int * ptls_new (int ,int) ;

__attribute__((used)) static ptls_t *stateless_hrr_prepare(ptls_buffer_t *sbuf, ptls_handshake_properties_t *server_hs_prop)
{
    ptls_t *client = ptls_new(ctx, 0), *server = ptls_new(ctx_peer, 1);
    ptls_buffer_t cbuf;
    size_t consumed;
    int ret;

    ptls_buffer_init(&cbuf, "", 0);
    ptls_buffer_init(sbuf, "", 0);

    ret = ptls_handshake(client, &cbuf, ((void*)0), ((void*)0), ((void*)0));
    ok(ret == PTLS_ERROR_IN_PROGRESS);

    consumed = cbuf.off;
    ret = ptls_handshake(server, sbuf, cbuf.base, &consumed, server_hs_prop);
    ok(ret == PTLS_ERROR_STATELESS_RETRY);

    ptls_buffer_dispose(&cbuf);
    ptls_free(server);

    return client;
}
