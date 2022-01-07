
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* msg_loop ) (void*) ;int mutex; int ffplayer; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int ffp_create () ;
 int ijkmp_destroy_p (TYPE_1__**) ;
 int ijkmp_inc_ref (TYPE_1__*) ;
 scalar_t__ mallocz (int) ;
 int pthread_mutex_init (int *,int *) ;

IjkMediaPlayer *ijkmp_create(int (*msg_loop)(void*))
{
    IjkMediaPlayer *mp = (IjkMediaPlayer *) mallocz(sizeof(IjkMediaPlayer));
    if (!mp)
        goto fail;

    mp->ffplayer = ffp_create();
    if (!mp->ffplayer)
        goto fail;

    mp->msg_loop = msg_loop;

    ijkmp_inc_ref(mp);
    pthread_mutex_init(&mp->mutex, ((void*)0));

    return mp;

    fail:
    ijkmp_destroy_p(&mp);
    return ((void*)0);
}
