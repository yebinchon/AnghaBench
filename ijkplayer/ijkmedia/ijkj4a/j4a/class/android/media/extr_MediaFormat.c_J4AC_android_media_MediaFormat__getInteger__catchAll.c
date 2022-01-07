
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jstring ;
typedef int jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int J4AC_android_media_MediaFormat__getInteger (int *,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jint J4AC_android_media_MediaFormat__getInteger__catchAll(JNIEnv *env, jobject thiz, jstring name)
{
    jint ret_value = J4AC_android_media_MediaFormat__getInteger(env, thiz, name);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
