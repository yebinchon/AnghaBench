
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jclass ;
typedef int JNIEnv ;


 int J4A_DeleteLocalRef__p (int *,int **) ;
 int J4A_FUNC_FAIL_TRACE1 (char const*) ;
 int * J4A_FindClass__catchAll (int *,char const*) ;
 int * J4A_NewGlobalRef__catchAll (int *,int *) ;

jclass J4A_FindClass__asGlobalRef__catchAll(JNIEnv *env, const char *class_sign)
{
    jclass clazz_global = ((void*)0);
    jclass clazz = J4A_FindClass__catchAll(env, class_sign);
    if (!clazz) {
        J4A_FUNC_FAIL_TRACE1(class_sign);
        goto fail;
    }

    clazz_global = J4A_NewGlobalRef__catchAll(env, clazz);
    if (!clazz_global) {
        J4A_FUNC_FAIL_TRACE1(class_sign);
        goto fail;
    }

fail:
    J4A_DeleteLocalRef__p(env, &clazz);
    return clazz_global;
}
