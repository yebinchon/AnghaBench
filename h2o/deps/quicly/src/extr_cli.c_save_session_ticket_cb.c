
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int quicly_conn_t ;
typedef int ptls_t ;
typedef int ptls_save_ticket_t ;
struct TYPE_5__ {int len; int base; } ;
typedef TYPE_1__ ptls_iovec_t ;
struct TYPE_7__ {int base; } ;
struct TYPE_6__ {TYPE_4__ tls_ticket; } ;


 int free (int ) ;
 int malloc (int ) ;
 int memcpy (int ,int ,int ) ;
 int ** ptls_get_data_ptr (int *) ;
 TYPE_4__ ptls_iovec_init (int ,int ) ;
 int quicly_get_peer_transport_parameters (int *) ;
 int save_session (int ) ;
 TYPE_2__ session_info ;

int save_session_ticket_cb(ptls_save_ticket_t *_self, ptls_t *tls, ptls_iovec_t src)
{
    free(session_info.tls_ticket.base);
    session_info.tls_ticket = ptls_iovec_init(malloc(src.len), src.len);
    memcpy(session_info.tls_ticket.base, src.base, src.len);

    quicly_conn_t *conn = *ptls_get_data_ptr(tls);
    return save_session(quicly_get_peer_transport_parameters(conn));
}
