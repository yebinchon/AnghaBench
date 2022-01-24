#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jobject ;
struct TYPE_5__ {TYPE_1__* ffplayer; } ;
struct TYPE_4__ {int /*<<< orphan*/  pipeline; int /*<<< orphan*/  vout; } ;
typedef  int /*<<< orphan*/  JNIEnv ;
typedef  TYPE_2__ IjkMediaPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(JNIEnv *env, IjkMediaPlayer *mp, jobject android_surface)
{
    if (!mp || !mp->ffplayer || !mp->ffplayer->vout)
        return;

    FUNC0(env, mp->ffplayer->vout, android_surface);
    FUNC1(env, mp->ffplayer->pipeline, android_surface);
}