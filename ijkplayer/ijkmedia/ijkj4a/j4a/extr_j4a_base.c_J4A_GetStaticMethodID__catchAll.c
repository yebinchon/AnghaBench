
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * jmethodID ;
typedef int jclass ;
struct TYPE_5__ {int * (* GetStaticMethodID ) (TYPE_1__**,int ,char const*,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 int J4A_FUNC_FAIL_TRACE2 (char const*,char const*) ;
 int * stub1 (TYPE_1__**,int ,char const*,char const*) ;

jmethodID J4A_GetStaticMethodID__catchAll(JNIEnv *env, jclass clazz, const char *method_name, const char *method_sign)
{
    jmethodID method_id = (*env)->GetStaticMethodID(env, clazz, method_name, method_sign);
    if (J4A_ExceptionCheck__catchAll(env) || !method_id) {
        J4A_FUNC_FAIL_TRACE2(method_name, method_sign);
        method_id = ((void*)0);
        goto fail;
    }

fail:
    return method_id;
}
