#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jstring ;
typedef  int /*<<< orphan*/  jobject ;
typedef  int /*<<< orphan*/  jint ;
struct TYPE_8__ {char* (* GetStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

const char *FUNC6(JNIEnv *env, jobject weakThiz, jstring mimeType, jint profile, jint level, char *out_buf, int out_len)
{
    const char *ret_value = NULL;
    const char *c_str     = NULL;
    jstring local_string = FUNC0(env, weakThiz, mimeType, profile, level);
    if (FUNC2(env) || !local_string) {
        goto fail;
    }

    c_str = (*env)->GetStringUTFChars(env, local_string, NULL );
    if (FUNC2(env) || !c_str) {
        goto fail;
    }

    FUNC4(out_buf, c_str, out_len);
    ret_value = out_buf;

fail:
    FUNC3(env, local_string, &c_str);
    FUNC1(env, &local_string);
    return ret_value;
}