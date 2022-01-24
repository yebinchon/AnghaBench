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
typedef  int /*<<< orphan*/  jlong ;
typedef  int /*<<< orphan*/  jint ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

jlong FUNC2(JNIEnv *env, jobject thiz, jlong offset, jint whence)
{
    jlong ret_value = FUNC0(env, thiz, offset, whence);
    if (FUNC1(env)) {
        return 0;
    }

    return ret_value;
}