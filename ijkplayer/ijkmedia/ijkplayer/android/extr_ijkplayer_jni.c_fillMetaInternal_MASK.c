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
typedef  int /*<<< orphan*/  JNIEnv ;
typedef  int /*<<< orphan*/  IjkMediaMeta ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) inline static void FUNC2(JNIEnv *env, jobject jbundle, IjkMediaMeta *meta, const char *key, const char *default_value)
{
    const char *value = FUNC1(meta, key);
    if (value == NULL )
        value = default_value;

    FUNC0(env, jbundle, key, value);
}