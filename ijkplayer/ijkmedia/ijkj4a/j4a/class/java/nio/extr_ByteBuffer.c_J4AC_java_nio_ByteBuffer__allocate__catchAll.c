
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int * J4AC_java_nio_ByteBuffer__allocate (int *,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jobject J4AC_java_nio_ByteBuffer__allocate__catchAll(JNIEnv *env, jint capacity)
{
    jobject ret_object = J4AC_java_nio_ByteBuffer__allocate(env, capacity);
    if (J4A_ExceptionCheck__catchAll(env) || !ret_object) {
        return ((void*)0);
    }

    return ret_object;
}
