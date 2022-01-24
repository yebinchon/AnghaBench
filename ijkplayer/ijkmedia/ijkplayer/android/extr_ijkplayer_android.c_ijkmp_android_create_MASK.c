#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  vout; int /*<<< orphan*/  pipeline; } ;
struct TYPE_6__ {TYPE_5__* ffplayer; } ;
typedef  TYPE_1__ IjkMediaPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int (*) (void*)) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 

IjkMediaPlayer *FUNC5(int(*msg_loop)(void*))
{
    IjkMediaPlayer *mp = FUNC3(msg_loop);
    if (!mp)
        goto fail;

    mp->ffplayer->vout = FUNC0();
    if (!mp->ffplayer->vout)
        goto fail;

    mp->ffplayer->pipeline = FUNC1(mp->ffplayer);
    if (!mp->ffplayer->pipeline)
        goto fail;

    FUNC2(mp->ffplayer->pipeline, mp->ffplayer->vout);

    return mp;

fail:
    FUNC4(&mp);
    return NULL;
}