
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int mutex; int ffplayer; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int assert (TYPE_1__*) ;
 int ffp_set_property_int64 (int ,int,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void ijkmp_set_property_int64(IjkMediaPlayer *mp, int id, int64_t value)
{
    assert(mp);

    pthread_mutex_lock(&mp->mutex);
    ffp_set_property_int64(mp->ffplayer, id, value);
    pthread_mutex_unlock(&mp->mutex);
}
