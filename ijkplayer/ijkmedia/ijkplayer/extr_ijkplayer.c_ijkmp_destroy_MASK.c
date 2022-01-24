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
struct TYPE_4__ {int /*<<< orphan*/  data_source; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * msg_thread; int /*<<< orphan*/  ffplayer; } ;
typedef  TYPE_1__ IjkMediaPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) inline static void FUNC5(IjkMediaPlayer *mp)
{
    if (!mp)
        return;

    FUNC1(&mp->ffplayer);
    if (mp->msg_thread) {
        FUNC0(mp->msg_thread, NULL);
        mp->msg_thread = NULL;
    }

    FUNC4(&mp->mutex);

    FUNC2((void**)&mp->data_source);
    FUNC3(mp, 0, sizeof(IjkMediaPlayer));
    FUNC2((void**)&mp);
}