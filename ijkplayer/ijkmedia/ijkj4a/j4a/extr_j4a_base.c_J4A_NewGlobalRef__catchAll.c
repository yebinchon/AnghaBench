
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
typedef int jclass ;
struct TYPE_5__ {int (* NewGlobalRef ) (TYPE_1__**,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 int J4A_FUNC_FAIL_TRACE () ;
 int stub1 (TYPE_1__**,int ) ;

jclass J4A_NewGlobalRef__catchAll(JNIEnv *env, jobject obj)
{
    jclass obj_global = (*env)->NewGlobalRef(env, obj);
    if (J4A_ExceptionCheck__catchAll(env) || !(obj_global)) {
        J4A_FUNC_FAIL_TRACE();
        goto fail;
    }

fail:
    return obj_global;
}
