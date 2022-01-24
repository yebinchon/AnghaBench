#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  msg_queue; } ;
struct TYPE_9__ {struct TYPE_9__* data_source; TYPE_5__* ffplayer; int /*<<< orphan*/  _msg_thread; int /*<<< orphan*/  msg_thread; int /*<<< orphan*/  mp_state; } ;
typedef  TYPE_1__ IjkMediaPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_STATE_ASYNC_PREPARING ; 
 int /*<<< orphan*/  MP_STATE_COMPLETED ; 
 int /*<<< orphan*/  MP_STATE_END ; 
 int /*<<< orphan*/  MP_STATE_ERROR ; 
 int /*<<< orphan*/  MP_STATE_IDLE ; 
 int /*<<< orphan*/  MP_STATE_PAUSED ; 
 int /*<<< orphan*/  MP_STATE_PREPARED ; 
 int /*<<< orphan*/  MP_STATE_STARTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_5__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  ijkmp_msg_loop ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(IjkMediaPlayer *mp)
{
    FUNC2(mp);

    FUNC0(mp->mp_state, MP_STATE_IDLE);
    // MPST_RET_IF_EQ(mp->mp_state, MP_STATE_INITIALIZED);
    FUNC0(mp->mp_state, MP_STATE_ASYNC_PREPARING);
    FUNC0(mp->mp_state, MP_STATE_PREPARED);
    FUNC0(mp->mp_state, MP_STATE_STARTED);
    FUNC0(mp->mp_state, MP_STATE_PAUSED);
    FUNC0(mp->mp_state, MP_STATE_COMPLETED);
    // MPST_RET_IF_EQ(mp->mp_state, MP_STATE_STOPPED);
    FUNC0(mp->mp_state, MP_STATE_ERROR);
    FUNC0(mp->mp_state, MP_STATE_END);

    FUNC2(mp->data_source);

    FUNC4(mp, MP_STATE_ASYNC_PREPARING);

    FUNC6(&mp->ffplayer->msg_queue);

    // released in msg_loop
    FUNC5(mp);
    mp->msg_thread = FUNC1(&mp->_msg_thread, ijkmp_msg_loop, mp, "ff_msg_loop");
    // msg_thread is detached inside msg_loop
    // TODO: 9 release weak_thiz if pthread_create() failed;

    int retval = FUNC3(mp->ffplayer, mp->data_source);
    if (retval < 0) {
        FUNC4(mp, MP_STATE_ERROR);
        return retval;
    }

    return 0;
}