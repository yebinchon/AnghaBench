
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jint ;
struct TYPE_4__ {scalar_t__ (* AttachCurrentThread ) (TYPE_1__**,int **,int *) ;} ;
typedef TYPE_1__* JavaVM ;
typedef int JNIEnv ;


 int ALOGE (char*) ;
 scalar_t__ JNI_OK ;
 TYPE_1__** g_jvm ;
 int g_key_once ;
 int g_thread_key ;
 int make_thread_key ;
 scalar_t__ pthread_getspecific (int ) ;
 int pthread_once (int *,int ) ;
 int pthread_setspecific (int ,int *) ;
 scalar_t__ stub1 (TYPE_1__**,int **,int *) ;

jint SDL_JNI_SetupThreadEnv(JNIEnv **p_env)
{
    JavaVM *jvm = g_jvm;
    if (!jvm) {
        ALOGE("SDL_JNI_GetJvm: AttachCurrentThread: NULL jvm");
        return -1;
    }

    pthread_once(&g_key_once, make_thread_key);

    JNIEnv *env = (JNIEnv*) pthread_getspecific(g_thread_key);
    if (env) {
        *p_env = env;
        return 0;
    }

    if ((*jvm)->AttachCurrentThread(jvm, &env, ((void*)0)) == JNI_OK) {
        pthread_setspecific(g_thread_key, env);
        *p_env = env;
        return 0;
    }

    return -1;
}
