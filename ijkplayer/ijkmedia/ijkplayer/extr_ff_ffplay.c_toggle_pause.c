
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
 int toggle_pause_l (TYPE_2__*,int) ;

__attribute__((used)) static void toggle_pause(FFPlayer *ffp, int pause_on)
{
    SDL_LockMutex(ffp->is->play_mutex);
    toggle_pause_l(ffp, pause_on);
    SDL_UnlockMutex(ffp->is->play_mutex);
}
