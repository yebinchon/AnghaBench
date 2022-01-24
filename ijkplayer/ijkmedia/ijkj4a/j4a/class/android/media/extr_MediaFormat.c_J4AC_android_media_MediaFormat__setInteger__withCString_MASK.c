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
typedef  int /*<<< orphan*/  jint ;
struct TYPE_7__ {int /*<<< orphan*/ * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__**,char const*) ; 

void FUNC4(JNIEnv *env, jobject thiz, const char *name_cstr__, jint value)
{
    jstring name = NULL;

    name = (*env)->NewStringUTF(env, name_cstr__);
    if (FUNC2(env) || !name)
        goto fail;

    FUNC0(env, thiz, name, value);

fail:
    FUNC1(env, &name);
}