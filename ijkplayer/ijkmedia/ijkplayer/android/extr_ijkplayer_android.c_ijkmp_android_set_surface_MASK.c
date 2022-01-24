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
typedef  scalar_t__ jobject ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  JNIEnv ;
typedef  TYPE_1__ IjkMediaPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(JNIEnv *env, IjkMediaPlayer *mp, jobject android_surface)
{
    if (!mp)
        return;

    FUNC0("ijkmp_set_android_surface(surface=%p)", (void*)android_surface);
    FUNC2(&mp->mutex);
    FUNC1(env, mp, android_surface);
    FUNC3(&mp->mutex);
    FUNC0("ijkmp_set_android_surface(surface=%p)=void", (void*)android_surface);
}