#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jstring ;
typedef  int /*<<< orphan*/  jobject ;
typedef  scalar_t__ jlong ;
struct TYPE_7__ {int /*<<< orphan*/ * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__**,char const*) ; 

jlong FUNC4(JNIEnv *env, jobject thiz, const char *key_cstr__)
{
    jlong ret_value = 0;
    jstring key = NULL;

    key = (*env)->NewStringUTF(env, key_cstr__);
    if (FUNC2(env) || !key)
        goto fail;

    ret_value = FUNC0(env, thiz, key);
    if (FUNC2(env)) {
        ret_value = 0;
        goto fail;
    }

fail:
    FUNC1(env, &key);
    return ret_value;
}