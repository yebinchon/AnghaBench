
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_source; int mutex; int * msg_thread; int ffplayer; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int SDL_WaitThread (int *,int *) ;
 int ffp_destroy_p (int *) ;
 int freep (void**) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) inline static void ijkmp_destroy(IjkMediaPlayer *mp)
{
    if (!mp)
        return;

    ffp_destroy_p(&mp->ffplayer);
    if (mp->msg_thread) {
        SDL_WaitThread(mp->msg_thread, ((void*)0));
        mp->msg_thread = ((void*)0);
    }

    pthread_mutex_destroy(&mp->mutex);

    freep((void**)&mp->data_source);
    memset(mp, 0, sizeof(IjkMediaPlayer));
    freep((void**)&mp);
}
