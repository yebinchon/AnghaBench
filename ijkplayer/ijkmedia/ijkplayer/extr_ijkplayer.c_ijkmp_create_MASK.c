#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* msg_loop ) (void*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  ffplayer; } ;
typedef  TYPE_1__ IjkMediaPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

IjkMediaPlayer *FUNC5(int (*msg_loop)(void*))
{
    IjkMediaPlayer *mp = (IjkMediaPlayer *) FUNC3(sizeof(IjkMediaPlayer));
    if (!mp)
        goto fail;

    mp->ffplayer = FUNC0();
    if (!mp->ffplayer)
        goto fail;

    mp->msg_loop = msg_loop;

    FUNC2(mp);
    FUNC4(&mp->mutex, NULL);

    return mp;

    fail:
    FUNC1(&mp);
    return NULL;
}