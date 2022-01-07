
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JNIEnv ;


 int J4A_ThrowException (int *,char*,char const*) ;

int J4A_ThrowIllegalStateException(JNIEnv *env, const char* msg)
{
    return J4A_ThrowException(env, "java/lang/IllegalStateException", msg);
}
