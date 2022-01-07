
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
struct TYPE_5__ {void* (* GetDirectBufferAddress ) (TYPE_1__**,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 void* stub1 (TYPE_1__**,int ) ;

void *J4AC_java_nio_ByteBuffer__getDirectBufferAddress__catchAll(JNIEnv *env, jobject thiz)
{
    void *ret = (*env)->GetDirectBufferAddress(env, thiz);
    if (J4A_ExceptionCheck__catchAll(env) || !ret)
        return ((void*)0);

    return ret;
}
