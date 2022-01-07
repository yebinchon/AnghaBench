
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int quicly_save_resumption_token_t ;
typedef int quicly_conn_t ;
struct TYPE_5__ {int len; int base; } ;
typedef TYPE_1__ ptls_iovec_t ;
struct TYPE_7__ {int base; } ;
struct TYPE_6__ {TYPE_4__ address_token; } ;


 int free (int ) ;
 int malloc (int ) ;
 int memcpy (int ,int ,int ) ;
 TYPE_4__ ptls_iovec_init (int ,int ) ;
 int quicly_get_peer_transport_parameters (int *) ;
 int save_session (int ) ;
 TYPE_2__ session_info ;

__attribute__((used)) static int save_resumption_token_cb(quicly_save_resumption_token_t *_self, quicly_conn_t *conn, ptls_iovec_t token)
{
    free(session_info.address_token.base);
    session_info.address_token = ptls_iovec_init(malloc(token.len), token.len);
    memcpy(session_info.address_token.base, token.base, token.len);

    return save_session(quicly_get_peer_transport_parameters(conn));
}
