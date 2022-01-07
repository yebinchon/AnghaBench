
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int cond; } ;
typedef TYPE_1__ FrameQueue ;


 int SDL_CondSignal (int ) ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;

__attribute__((used)) static void frame_queue_signal(FrameQueue *f)
{
    SDL_LockMutex(f->mutex);
    SDL_CondSignal(f->cond);
    SDL_UnlockMutex(f->mutex);
}
