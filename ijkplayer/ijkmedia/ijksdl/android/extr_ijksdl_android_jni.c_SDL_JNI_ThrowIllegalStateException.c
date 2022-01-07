
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JNIEnv ;


 int SDL_JNI_ThrowException (int *,char*,char const*) ;

int SDL_JNI_ThrowIllegalStateException(JNIEnv *env, const char* msg)
{
    return SDL_JNI_ThrowException(env, "java/lang/IllegalStateException", msg);
}
