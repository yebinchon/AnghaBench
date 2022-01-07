
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jclass ;
typedef int JNIEnv ;


 int J4A_ALOGE (char*) ;
 int J4A_DeleteLocalRef__p (int *,int **) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;
 int J4A_FUNC_FAIL_TRACE () ;
 int * J4A_FindClass__catchAll (int *,char const*) ;
 int J4A_ThrowExceptionOfClass (int *,int *,char const*) ;

int J4A_ThrowException(JNIEnv* env, const char* class_sign, const char* msg)
{
    int ret = -1;

    if (J4A_ExceptionCheck__catchAll(env)) {
        J4A_ALOGE("pending exception throwed.\n");
    }

    jclass exceptionClass = J4A_FindClass__catchAll(env, class_sign);
    if (exceptionClass == ((void*)0)) {
        J4A_FUNC_FAIL_TRACE();
        ret = -1;
        goto fail;
    }

    ret = J4A_ThrowExceptionOfClass(env, exceptionClass, msg);
    if (ret) {
        J4A_FUNC_FAIL_TRACE();
        goto fail;
    }

    ret = 0;
fail:
    J4A_DeleteLocalRef__p(env, &exceptionClass);
    return ret;
}
