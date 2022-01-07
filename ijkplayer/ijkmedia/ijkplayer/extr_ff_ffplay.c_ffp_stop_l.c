
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int abort_request; scalar_t__ accurate_seek_mutex; scalar_t__ video_accurate_seek_cond; scalar_t__ audio_accurate_seek_cond; scalar_t__ video_accurate_seek_req; scalar_t__ audio_accurate_seek_req; } ;
typedef TYPE_1__ VideoState ;
struct TYPE_7__ {scalar_t__ enable_accurate_seek; int msg_queue; TYPE_1__* is; } ;
typedef TYPE_2__ FFPlayer ;


 int SDL_CondSignal (scalar_t__) ;
 int SDL_LockMutex (scalar_t__) ;
 int SDL_UnlockMutex (scalar_t__) ;
 int assert (TYPE_2__*) ;
 int msg_queue_abort (int *) ;
 int toggle_pause (TYPE_2__*,int) ;

int ffp_stop_l(FFPlayer *ffp)
{
    assert(ffp);
    VideoState *is = ffp->is;
    if (is) {
        is->abort_request = 1;
        toggle_pause(ffp, 1);
    }

    msg_queue_abort(&ffp->msg_queue);
    if (ffp->enable_accurate_seek && is && is->accurate_seek_mutex
        && is->audio_accurate_seek_cond && is->video_accurate_seek_cond) {
        SDL_LockMutex(is->accurate_seek_mutex);
        is->audio_accurate_seek_req = 0;
        is->video_accurate_seek_req = 0;
        SDL_CondSignal(is->audio_accurate_seek_cond);
        SDL_CondSignal(is->video_accurate_seek_cond);
        SDL_UnlockMutex(is->accurate_seek_mutex);
    }
    return 0;
}
