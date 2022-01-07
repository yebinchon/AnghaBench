
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * jclass ;
struct TYPE_5__ {int * (* FindClass ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 int J4A_FUNC_FAIL_TRACE () ;
 int * stub1 (TYPE_1__**,char const*) ;

jclass J4A_FindClass__catchAll(JNIEnv *env, const char *class_sign)
{
    jclass clazz = (*env)->FindClass(env, class_sign);
    if (J4A_ExceptionCheck__catchAll(env) || !(clazz)) {
        J4A_FUNC_FAIL_TRACE();
        clazz = ((void*)0);
        goto fail;
    }

fail:
    return clazz;
}
