
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_11__ {TYPE_7__ time_base; } ;
struct TYPE_10__ {int duration; int packets; int bytes; } ;
struct TYPE_9__ {int duration; int nb_packets; int size; } ;
typedef TYPE_1__ PacketQueue ;
typedef TYPE_2__ FFTrackCacheStatistic ;
typedef int FFPlayer ;
typedef TYPE_3__ AVStream ;


 int assert (TYPE_2__*) ;
 int av_q2d (TYPE_7__) ;

void ffp_track_statistic_l(FFPlayer *ffp, AVStream *st, PacketQueue *q, FFTrackCacheStatistic *cache)
{
    assert(cache);

    if (q) {
        cache->bytes = q->size;
        cache->packets = q->nb_packets;
    }

    if (q && st && st->time_base.den > 0 && st->time_base.num > 0) {
        cache->duration = q->duration * av_q2d(st->time_base) * 1000;
    }
}
