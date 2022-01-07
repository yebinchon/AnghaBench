
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sender_state; } ;
struct TYPE_6__ {TYPE_1__ rst; } ;
struct TYPE_7__ {TYPE_2__ _send_aux; int sendstate; int recvstate; } ;
typedef TYPE_3__ quicly_stream_t ;




 int quicly_recvstate_transfer_complete (int *) ;
 int quicly_sendstate_transfer_complete (int *) ;

__attribute__((used)) static int stream_is_destroyable(quicly_stream_t *stream)
{
    if (!quicly_recvstate_transfer_complete(&stream->recvstate))
        return 0;
    if (!quicly_sendstate_transfer_complete(&stream->sendstate))
        return 0;
    switch (stream->_send_aux.rst.sender_state) {
    case 128:
    case 129:
        break;
    default:
        return 0;
    }
    return 1;
}
