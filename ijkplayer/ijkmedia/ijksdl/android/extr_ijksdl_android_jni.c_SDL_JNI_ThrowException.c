
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int * jthrowable ;
typedef int * jclass ;
struct TYPE_10__ {scalar_t__ (* ThrowNew ) (TYPE_1__**,int *,char const*) ;int (* DeleteLocalRef ) (TYPE_1__**,int *) ;int * (* FindClass ) (TYPE_1__**,char const*) ;int (* ExceptionClear ) (TYPE_1__**) ;int * (* ExceptionOccurred ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;} ;
typedef TYPE_1__* JNIEnv ;


 int ALOGE (char*,char const*,...) ;
 int ALOGW (char*,char const*) ;
 scalar_t__ JNI_OK ;
 scalar_t__ stub1 (TYPE_1__**) ;
 int * stub2 (TYPE_1__**) ;
 int stub3 (TYPE_1__**) ;
 int stub4 (TYPE_1__**,int *) ;
 int * stub5 (TYPE_1__**,char const*) ;
 scalar_t__ stub6 (TYPE_1__**,int *,char const*) ;
 int stub7 (TYPE_1__**,int *) ;

int SDL_JNI_ThrowException(JNIEnv* env, const char* className, const char* msg)
{
    if ((*env)->ExceptionCheck(env)) {
        jthrowable exception = (*env)->ExceptionOccurred(env);
        (*env)->ExceptionClear(env);

        if (exception != ((void*)0)) {
            ALOGW("Discarding pending exception (%s) to throw", className);
            (*env)->DeleteLocalRef(env, exception);
        }
    }

    jclass exceptionClass = (*env)->FindClass(env, className);
    if (exceptionClass == ((void*)0)) {
        ALOGE("Unable to find exception class %s", className);

        goto fail;
    }

    if ((*env)->ThrowNew(env, exceptionClass, msg) != JNI_OK) {
        ALOGE("Failed throwing '%s' '%s'", className, msg);

        goto fail;
    }

    return 0;
fail:
    if (exceptionClass)
        (*env)->DeleteLocalRef(env, exceptionClass);
    return -1;
}
