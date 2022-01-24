#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jobject ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  JNIEnv ;
typedef  int /*<<< orphan*/  IjkMediaPlayer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,intptr_t) ; 
 TYPE_1__ g_clazz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static IjkMediaPlayer *FUNC6(JNIEnv* env, jobject thiz, IjkMediaPlayer *mp)
{
    FUNC4(&g_clazz.mutex);

    IjkMediaPlayer *old = (IjkMediaPlayer*) (intptr_t) FUNC0(env, thiz);
    if (mp) {
        FUNC3(mp);
    }
    FUNC1(env, thiz, (intptr_t) mp);

    FUNC5(&g_clazz.mutex);

    // NOTE: ijkmp_dec_ref may block thread
    if (old != NULL ) {
        FUNC2(&old);
    }

    return old;
}