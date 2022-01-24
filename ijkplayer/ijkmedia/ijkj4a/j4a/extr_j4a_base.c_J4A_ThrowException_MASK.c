#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * jclass ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

int FUNC6(JNIEnv* env, const char* class_sign, const char* msg)
{
    int ret = -1;

    if (FUNC2(env)) {
        FUNC0("pending exception throwed.\n");
    }

    jclass exceptionClass = FUNC4(env, class_sign);
    if (exceptionClass == NULL) {
        FUNC3();
        ret = -1;
        goto fail;
    }

    ret = FUNC5(env, exceptionClass, msg);
    if (ret) {
        FUNC3();
        goto fail;
    }

    ret = 0;
fail:
    FUNC1(env, &exceptionClass);
    return ret;
}