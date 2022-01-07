
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ show_mode; scalar_t__ force_refresh; int paused; int abort_request; } ;
typedef TYPE_1__ VideoState ;
struct TYPE_5__ {TYPE_1__* is; } ;
typedef TYPE_2__ FFPlayer ;


 double REFRESH_RATE ;
 scalar_t__ SHOW_MODE_NONE ;
 int av_usleep (int) ;
 int video_refresh (TYPE_2__*,double*) ;

__attribute__((used)) static int video_refresh_thread(void *arg)
{
    FFPlayer *ffp = arg;
    VideoState *is = ffp->is;
    double remaining_time = 0.0;
    while (!is->abort_request) {
        if (remaining_time > 0.0)
            av_usleep((int)(int64_t)(remaining_time * 1000000.0));
        remaining_time = REFRESH_RATE;
        if (is->show_mode != SHOW_MODE_NONE && (!is->paused || is->force_refresh))
            video_refresh(ffp, &remaining_time);
    }

    return 0;
}
