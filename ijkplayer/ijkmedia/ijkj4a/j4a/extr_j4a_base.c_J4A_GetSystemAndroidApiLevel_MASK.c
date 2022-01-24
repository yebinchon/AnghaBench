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
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int FUNC2(JNIEnv *env)
{
    static int SDK_INT = 0;
    if (SDK_INT > 0)
        return SDK_INT;

    SDK_INT = FUNC0(env);
    FUNC1("API-Level: %d\n", SDK_INT);
    return SDK_INT;
}