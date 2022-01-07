
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* is; } ;
struct TYPE_5__ {int play_mutex; } ;
typedef TYPE_2__ FFPlayer ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int ffp_toggle_buffering_l (TYPE_2__*,int) ;

void ffp_toggle_buffering(FFPlayer *ffp, int start_buffering)
{
    SDL_LockMutex(ffp->is->play_mutex);
    ffp_toggle_buffering_l(ffp, start_buffering);
    SDL_UnlockMutex(ffp->is->play_mutex);
}
