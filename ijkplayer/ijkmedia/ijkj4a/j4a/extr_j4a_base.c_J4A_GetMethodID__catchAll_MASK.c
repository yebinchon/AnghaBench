#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jmethodID ;
typedef  int /*<<< orphan*/  jclass ;
struct TYPE_5__ {int /*<<< orphan*/ * (* GetMethodID ) (TYPE_1__**,int /*<<< orphan*/ ,char const*,char const*) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,char const*,char const*) ; 

jmethodID FUNC3(JNIEnv *env, jclass clazz, const char *method_name, const char *method_sign)
{
    jmethodID method_id = (*env)->GetMethodID(env, clazz, method_name, method_sign);
    if (FUNC0(env) || !method_id) {
        FUNC1(method_name, method_sign);
        method_id = NULL;
        goto fail;
    }

fail:
    return method_id;
}