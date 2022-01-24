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
typedef  int /*<<< orphan*/ * jobject ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

jobject FUNC4(JNIEnv *env, jobject thiz)
{
    jobject ret_object   = NULL;
    jobject local_object = FUNC0(env, thiz);
    if (FUNC2(env) || !local_object) {
        ret_object = NULL;
        goto fail;
    }

    ret_object = FUNC3(env, local_object);
    if (!ret_object) {
        ret_object = NULL;
        goto fail;
    }

fail:
    FUNC1(env, &local_object);
    return ret_object;
}