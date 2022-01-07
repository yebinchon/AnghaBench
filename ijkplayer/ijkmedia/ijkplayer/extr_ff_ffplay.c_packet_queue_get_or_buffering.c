
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int packet_buffering; } ;
struct TYPE_7__ {scalar_t__ is_buffer_indicator; } ;
typedef TYPE_1__ PacketQueue ;
typedef TYPE_2__ FFPlayer ;
typedef int AVPacket ;


 int assert (int*) ;
 int av_packet_unref (int *) ;
 int ffp_toggle_buffering (TYPE_2__*,int) ;
 int packet_queue_get (TYPE_1__*,int *,int,int*) ;

__attribute__((used)) static int packet_queue_get_or_buffering(FFPlayer *ffp, PacketQueue *q, AVPacket *pkt, int *serial, int *finished)
{
    assert(finished);
    if (!ffp->packet_buffering)
        return packet_queue_get(q, pkt, 1, serial);

    while (1) {
        int new_packet = packet_queue_get(q, pkt, 0, serial);
        if (new_packet < 0)
            return -1;
        else if (new_packet == 0) {
            if (q->is_buffer_indicator && !*finished)
                ffp_toggle_buffering(ffp, 1);
            new_packet = packet_queue_get(q, pkt, 1, serial);
            if (new_packet < 0)
                return -1;
        }

        if (*finished == *serial) {
            av_packet_unref(pkt);
            continue;
        }
        else
            break;
    }

    return 1;
}
