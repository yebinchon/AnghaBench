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
typedef  int /*<<< orphan*/ * jobject ;
struct TYPE_4__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_1__**,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ *) ; 

void FUNC1(JNIEnv *env, jobject *obj_ptr)
{
    if (!obj_ptr || !*obj_ptr)
        return;

    (*env)->DeleteLocalRef(env, *obj_ptr);
    *obj_ptr = NULL;
}