
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jstring ;
typedef int * jobject ;
typedef int JNIEnv ;


 int * J4AC_android_media_MediaCodec__createByCodecName (int *,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jobject J4AC_android_media_MediaCodec__createByCodecName__catchAll(JNIEnv *env, jstring name)
{
    jobject ret_object = J4AC_android_media_MediaCodec__createByCodecName(env, name);
    if (J4A_ExceptionCheck__catchAll(env) || !ret_object) {
        return ((void*)0);
    }

    return ret_object;
}
