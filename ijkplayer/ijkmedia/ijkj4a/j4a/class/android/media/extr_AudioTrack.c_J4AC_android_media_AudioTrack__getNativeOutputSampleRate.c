
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jint ;
struct TYPE_6__ {int method_getNativeOutputSampleRate; int id; } ;
struct TYPE_5__ {int (* CallStaticIntMethod ) (TYPE_1__**,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_media_AudioTrack ;
 int stub1 (TYPE_1__**,int ,int ,int ) ;

jint J4AC_android_media_AudioTrack__getNativeOutputSampleRate(JNIEnv *env, jint streamType)
{
    return (*env)->CallStaticIntMethod(env, class_J4AC_android_media_AudioTrack.id, class_J4AC_android_media_AudioTrack.method_getNativeOutputSampleRate, streamType);
}
