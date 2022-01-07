
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int default_scheduler; int control; } ;
struct TYPE_6__ {TYPE_1__ pending_link; int max_stream_data_sender; } ;
struct TYPE_7__ {TYPE_2__ _send_aux; int recvstate; int sendstate; } ;
typedef TYPE_3__ quicly_stream_t ;


 int quicly_linklist_unlink (int *) ;
 int quicly_maxsender_dispose (int *) ;
 int quicly_recvstate_dispose (int *) ;
 int quicly_sendstate_dispose (int *) ;

__attribute__((used)) static void dispose_stream_properties(quicly_stream_t *stream)
{
    quicly_sendstate_dispose(&stream->sendstate);
    quicly_recvstate_dispose(&stream->recvstate);
    quicly_maxsender_dispose(&stream->_send_aux.max_stream_data_sender);
    quicly_linklist_unlink(&stream->_send_aux.pending_link.control);
    quicly_linklist_unlink(&stream->_send_aux.pending_link.default_scheduler);
}
