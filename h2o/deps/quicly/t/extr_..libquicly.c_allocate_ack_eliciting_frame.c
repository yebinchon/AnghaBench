
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int quicly_sent_t ;
typedef int quicly_sent_acked_cb ;
typedef int quicly_send_context_t ;
struct TYPE_5__ {int sentmap; } ;
struct TYPE_6__ {TYPE_1__ egress; } ;
typedef TYPE_2__ quicly_conn_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int _do_allocate_frame (TYPE_2__*,int *,size_t,int) ;
 int * quicly_sentmap_allocate (int *,int ) ;

__attribute__((used)) static int allocate_ack_eliciting_frame(quicly_conn_t *conn, quicly_send_context_t *s, size_t min_space, quicly_sent_t **sent,
                                        quicly_sent_acked_cb acked)
{
    int ret;

    if ((ret = _do_allocate_frame(conn, s, min_space, 1)) != 0)
        return ret;
    if ((*sent = quicly_sentmap_allocate(&conn->egress.sentmap, acked)) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;


    return ret;
}
