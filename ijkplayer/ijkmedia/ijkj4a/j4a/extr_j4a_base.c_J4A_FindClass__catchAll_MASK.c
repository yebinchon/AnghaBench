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
typedef  int /*<<< orphan*/ * jclass ;
struct TYPE_5__ {int /*<<< orphan*/ * (* FindClass ) (TYPE_1__**,char const*) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__**,char const*) ; 

jclass FUNC3(JNIEnv *env, const char *class_sign)
{
    jclass clazz = (*env)->FindClass(env, class_sign);
    if (FUNC0(env) || !(clazz)) {
        FUNC1();
        clazz = NULL;
        goto fail;
    }

fail:
    return clazz;
}