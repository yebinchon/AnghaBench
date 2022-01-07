
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
typedef int jint ;
struct TYPE_6__ {int method_limit; } ;
struct TYPE_5__ {int (* CallObjectMethod ) (TYPE_1__**,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_java_nio_ByteBuffer ;
 int stub1 (TYPE_1__**,int ,int ,int ) ;

jobject J4AC_java_nio_ByteBuffer__limit(JNIEnv *env, jobject thiz, jint newLimit)
{
    return (*env)->CallObjectMethod(env, thiz, class_J4AC_java_nio_ByteBuffer.method_limit, newLimit);
}
