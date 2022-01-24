#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int jint ;
struct TYPE_4__ {scalar_t__ (* AttachCurrentThread ) (TYPE_1__**,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__* JavaVM ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ JNI_OK ; 
 TYPE_1__** g_jvm ; 
 int /*<<< orphan*/  g_key_once ; 
 int /*<<< orphan*/  g_thread_key ; 
 int /*<<< orphan*/  make_thread_key ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__**,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

jint FUNC5(JNIEnv **p_env)
{
    JavaVM *jvm = g_jvm;
    if (!jvm) {
        FUNC0("SDL_JNI_GetJvm: AttachCurrentThread: NULL jvm");
        return -1;
    }

    FUNC2(&g_key_once, make_thread_key);

    JNIEnv *env = (JNIEnv*) FUNC1(g_thread_key);
    if (env) {
        *p_env = env;
        return 0;
    }

    if ((*jvm)->AttachCurrentThread(jvm, &env, NULL) == JNI_OK) {
        FUNC3(g_thread_key, env);
        *p_env = env;
        return 0;
    }

    return -1;
}