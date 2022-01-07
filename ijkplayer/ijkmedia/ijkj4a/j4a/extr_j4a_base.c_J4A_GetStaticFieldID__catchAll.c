
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * jfieldID ;
typedef int jclass ;
struct TYPE_5__ {int * (* GetStaticFieldID ) (TYPE_1__**,int ,char const*,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 int J4A_FUNC_FAIL_TRACE2 (char const*,char const*) ;
 int * stub1 (TYPE_1__**,int ,char const*,char const*) ;

jfieldID J4A_GetStaticFieldID__catchAll(JNIEnv *env, jclass clazz, const char *field_name, const char *field_sign)
{
    jfieldID field_id = (*env)->GetStaticFieldID(env, clazz, field_name, field_sign);
    if (J4A_ExceptionCheck__catchAll(env) || !field_id) {
        J4A_FUNC_FAIL_TRACE2(field_name, field_sign);
        field_id = ((void*)0);
        goto fail;
    }

fail:
    return field_id;
}
