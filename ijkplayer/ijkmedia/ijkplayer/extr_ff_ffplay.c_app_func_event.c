
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int buf_capacity; int buf_forwards; int buf_backwards; } ;
struct TYPE_10__ {scalar_t__ bytes; } ;
struct TYPE_9__ {scalar_t__ opaque; } ;
struct TYPE_7__ {int buf_capacity; int buf_forwards; int buf_backwards; int tcp_read_sampler; int byte_count; } ;
struct TYPE_8__ {int inject_opaque; TYPE_1__ stat; } ;
typedef TYPE_2__ FFPlayer ;
typedef TYPE_3__ AVApplicationContext ;
typedef TYPE_4__ AVAppIOTraffic ;
typedef TYPE_5__ AVAppAsyncStatistic ;


 int AVAPP_EVENT_ASYNC_STATISTIC ;
 int AVAPP_EVENT_IO_TRAFFIC ;
 int SDL_SpeedSampler2Add (int *,scalar_t__) ;
 int inject_callback (int ,int,void*,size_t) ;

__attribute__((used)) static int app_func_event(AVApplicationContext *h, int message ,void *data, size_t size)
{
    if (!h || !h->opaque || !data)
        return 0;

    FFPlayer *ffp = (FFPlayer *)h->opaque;
    if (!ffp->inject_opaque)
        return 0;
    if (message == AVAPP_EVENT_IO_TRAFFIC && sizeof(AVAppIOTraffic) == size) {
        AVAppIOTraffic *event = (AVAppIOTraffic *)(intptr_t)data;
        if (event->bytes > 0) {
            ffp->stat.byte_count += event->bytes;
            SDL_SpeedSampler2Add(&ffp->stat.tcp_read_sampler, event->bytes);
        }
    } else if (message == AVAPP_EVENT_ASYNC_STATISTIC && sizeof(AVAppAsyncStatistic) == size) {
        AVAppAsyncStatistic *statistic = (AVAppAsyncStatistic *) (intptr_t)data;
        ffp->stat.buf_backwards = statistic->buf_backwards;
        ffp->stat.buf_forwards = statistic->buf_forwards;
        ffp->stat.buf_capacity = statistic->buf_capacity;
    }
    return inject_callback(ffp->inject_opaque, message , data, size);
}
