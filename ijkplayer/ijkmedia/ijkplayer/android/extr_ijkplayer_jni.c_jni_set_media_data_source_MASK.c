#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ jobject ;
typedef  int /*<<< orphan*/  jlong ;
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_10__ {scalar_t__ (* NewGlobalRef ) (TYPE_1__**,scalar_t__) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_1__**) ; 
 TYPE_4__ g_clazz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__**,scalar_t__) ; 

__attribute__((used)) static int64_t FUNC8(JNIEnv* env, jobject thiz, jobject media_data_source)
{
    int64_t nativeMediaDataSource = 0;

    FUNC5(&g_clazz.mutex);

    jobject old = (jobject) (intptr_t) FUNC1(env, thiz);
    if (old) {
        FUNC0(env, old);
        FUNC3(env, &old);
        FUNC2(env, thiz, 0);
    }

    if (media_data_source) {
        jobject global_media_data_source = (*env)->NewGlobalRef(env, media_data_source);
        if (FUNC4(env) || !global_media_data_source)
            goto fail;

        nativeMediaDataSource = (int64_t) (intptr_t) global_media_data_source;
        FUNC2(env, thiz, (jlong) nativeMediaDataSource);
    }

fail:
    FUNC6(&g_clazz.mutex);
    return nativeMediaDataSource;
}