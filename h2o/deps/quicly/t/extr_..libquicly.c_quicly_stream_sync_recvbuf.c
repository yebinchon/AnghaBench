
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t data_off; } ;
struct TYPE_7__ {scalar_t__ stream_id; TYPE_1__ recvstate; } ;
typedef TYPE_2__ quicly_stream_t ;


 int sched_stream_control (TYPE_2__*) ;
 scalar_t__ should_send_max_stream_data (TYPE_2__*) ;

void quicly_stream_sync_recvbuf(quicly_stream_t *stream, size_t shift_amount)
{
    stream->recvstate.data_off += shift_amount;
    if (stream->stream_id >= 0) {
        if (should_send_max_stream_data(stream))
            sched_stream_control(stream);
    }
}
