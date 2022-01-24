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
typedef  int /*<<< orphan*/  jobject ;
typedef  int jboolean ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

jboolean FUNC2(JNIEnv *env, jobject thiz, jobject object)
{
    jboolean ret_value = FUNC0(env, thiz, object);
    if (FUNC1(env)) {
        return false;
    }

    return ret_value;
}