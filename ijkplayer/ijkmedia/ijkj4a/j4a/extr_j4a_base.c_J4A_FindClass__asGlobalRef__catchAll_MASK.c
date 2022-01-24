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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

jclass FUNC4(JNIEnv *env, const char *class_sign)
{
    jclass clazz_global = NULL;
    jclass clazz = FUNC2(env, class_sign);
    if (!clazz) {
        FUNC1(class_sign);
        goto fail;
    }

    clazz_global = FUNC3(env, clazz);
    if (!clazz_global) {
        FUNC1(class_sign);
        goto fail;
    }

fail:
    FUNC0(env, &clazz);
    return clazz_global;
}