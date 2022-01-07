
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jobject ;
struct TYPE_2__ {int mutex; } ;
typedef int JNIEnv ;
typedef int IjkMediaPlayer ;


 scalar_t__ J4AC_IjkMediaPlayer__mNativeMediaPlayer__get__catchAll (int *,int ) ;
 int J4AC_IjkMediaPlayer__mNativeMediaPlayer__set__catchAll (int *,int ,intptr_t) ;
 TYPE_1__ g_clazz ;
 int ijkmp_dec_ref_p (int **) ;
 int ijkmp_inc_ref (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static IjkMediaPlayer *jni_set_media_player(JNIEnv* env, jobject thiz, IjkMediaPlayer *mp)
{
    pthread_mutex_lock(&g_clazz.mutex);

    IjkMediaPlayer *old = (IjkMediaPlayer*) (intptr_t) J4AC_IjkMediaPlayer__mNativeMediaPlayer__get__catchAll(env, thiz);
    if (mp) {
        ijkmp_inc_ref(mp);
    }
    J4AC_IjkMediaPlayer__mNativeMediaPlayer__set__catchAll(env, thiz, (intptr_t) mp);

    pthread_mutex_unlock(&g_clazz.mutex);


    if (old != ((void*)0) ) {
        ijkmp_dec_ref_p(&old);
    }

    return old;
}
