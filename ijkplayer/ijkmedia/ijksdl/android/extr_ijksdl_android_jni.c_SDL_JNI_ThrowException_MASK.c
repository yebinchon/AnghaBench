#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jthrowable ;
typedef  int /*<<< orphan*/ * jclass ;
struct TYPE_10__ {scalar_t__ (* ThrowNew ) (TYPE_1__**,int /*<<< orphan*/ *,char const*) ;int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_1__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* FindClass ) (TYPE_1__**,char const*) ;int /*<<< orphan*/  (* ExceptionClear ) (TYPE_1__**) ;int /*<<< orphan*/ * (* ExceptionOccurred ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ JNI_OK ; 
 scalar_t__ FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__**,char const*) ; 
 scalar_t__ FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ *) ; 

int FUNC9(JNIEnv* env, const char* className, const char* msg)
{
    if ((*env)->ExceptionCheck(env)) {
        jthrowable exception = (*env)->ExceptionOccurred(env);
        (*env)->ExceptionClear(env);

        if (exception != NULL) {
            FUNC1("Discarding pending exception (%s) to throw", className);
            (*env)->DeleteLocalRef(env, exception);
        }
    }

    jclass exceptionClass = (*env)->FindClass(env, className);
    if (exceptionClass == NULL) {
        FUNC0("Unable to find exception class %s", className);
        /* ClassNotFoundException now pending */
        goto fail;
    }

    if ((*env)->ThrowNew(env, exceptionClass, msg) != JNI_OK) {
        FUNC0("Failed throwing '%s' '%s'", className, msg);
        /* an exception, most likely OOM, will now be pending */
        goto fail;
    }

    return 0;
fail:
    if (exceptionClass)
        (*env)->DeleteLocalRef(env, exceptionClass);
    return -1;
}