
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ jobject ;
typedef int jlong ;
typedef scalar_t__ int64_t ;
struct TYPE_11__ {int mutex; } ;
struct TYPE_10__ {scalar_t__ (* NewGlobalRef ) (TYPE_1__**,scalar_t__) ;} ;
typedef TYPE_1__* JNIEnv ;


 int J4AC_IMediaDataSource__close__catchAll (TYPE_1__**,scalar_t__) ;
 scalar_t__ J4AC_IjkMediaPlayer__mNativeMediaDataSource__get__catchAll (TYPE_1__**,scalar_t__) ;
 int J4AC_IjkMediaPlayer__mNativeMediaDataSource__set__catchAll (TYPE_1__**,scalar_t__,int ) ;
 int J4A_DeleteGlobalRef__p (TYPE_1__**,scalar_t__*) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 TYPE_4__ g_clazz ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ stub1 (TYPE_1__**,scalar_t__) ;

__attribute__((used)) static int64_t jni_set_media_data_source(JNIEnv* env, jobject thiz, jobject media_data_source)
{
    int64_t nativeMediaDataSource = 0;

    pthread_mutex_lock(&g_clazz.mutex);

    jobject old = (jobject) (intptr_t) J4AC_IjkMediaPlayer__mNativeMediaDataSource__get__catchAll(env, thiz);
    if (old) {
        J4AC_IMediaDataSource__close__catchAll(env, old);
        J4A_DeleteGlobalRef__p(env, &old);
        J4AC_IjkMediaPlayer__mNativeMediaDataSource__set__catchAll(env, thiz, 0);
    }

    if (media_data_source) {
        jobject global_media_data_source = (*env)->NewGlobalRef(env, media_data_source);
        if (J4A_ExceptionCheck__catchAll(env) || !global_media_data_source)
            goto fail;

        nativeMediaDataSource = (int64_t) (intptr_t) global_media_data_source;
        J4AC_IjkMediaPlayer__mNativeMediaDataSource__set__catchAll(env, thiz, (jlong) nativeMediaDataSource);
    }

fail:
    pthread_mutex_unlock(&g_clazz.mutex);
    return nativeMediaDataSource;
}
