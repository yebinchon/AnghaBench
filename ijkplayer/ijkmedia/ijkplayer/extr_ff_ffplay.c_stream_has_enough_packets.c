
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int disposition; int time_base; } ;
struct TYPE_5__ {int nb_packets; double duration; scalar_t__ abort_request; } ;
typedef TYPE_1__ PacketQueue ;
typedef TYPE_2__ AVStream ;


 int AV_DISPOSITION_ATTACHED_PIC ;
 int MIN_FRAMES ;
 double av_q2d (int ) ;

__attribute__((used)) static int stream_has_enough_packets(AVStream *st, int stream_id, PacketQueue *queue, int min_frames) {
    return stream_id < 0 ||
           queue->abort_request ||
           (st->disposition & AV_DISPOSITION_ATTACHED_PIC) ||



           queue->nb_packets > min_frames;
}
