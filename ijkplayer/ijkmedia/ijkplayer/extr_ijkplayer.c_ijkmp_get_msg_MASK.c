#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  start_on_prepared; int /*<<< orphan*/  msg_queue; } ;
struct TYPE_15__ {int what; scalar_t__ arg1; } ;
struct TYPE_14__ {int restart; int restart_from_beginning; int /*<<< orphan*/  mutex; TYPE_8__* ffplayer; int /*<<< orphan*/  mp_state; int /*<<< orphan*/  seek_msec; int /*<<< orphan*/  seek_req; } ;
typedef  TYPE_1__ IjkMediaPlayer ;
typedef  TYPE_2__ AVMessage ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
#define  FFP_MSG_COMPLETED 133 
#define  FFP_MSG_PREPARED 132 
#define  FFP_MSG_SEEK_COMPLETE 131 
#define  FFP_REQ_PAUSE 130 
#define  FFP_REQ_SEEK 129 
#define  FFP_REQ_START 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MP_STATE_ASYNC_PREPARING ; 
 int /*<<< orphan*/  MP_STATE_COMPLETED ; 
 int /*<<< orphan*/  MP_STATE_PAUSED ; 
 int /*<<< orphan*/  MP_STATE_PREPARED ; 
 int /*<<< orphan*/  MP_STATE_STARTED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,scalar_t__) ; 
 int FUNC5 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(IjkMediaPlayer *mp, AVMessage *msg, int block)
{
    FUNC1(mp);
    while (1) {
        int continue_wait_next_msg = 0;
        int retval = FUNC12(&mp->ffplayer->msg_queue, msg, block);
        if (retval <= 0)
            return retval;

        switch (msg->what) {
        case FFP_MSG_PREPARED:
            FUNC0("ijkmp_get_msg: FFP_MSG_PREPARED\n");
            FUNC13(&mp->mutex);
            if (mp->mp_state == MP_STATE_ASYNC_PREPARING) {
                FUNC7(mp, MP_STATE_PREPARED);
            } else {
                // FIXME: 1: onError() ?
                FUNC2(mp->ffplayer, AV_LOG_DEBUG, "FFP_MSG_PREPARED: expecting mp_state==MP_STATE_ASYNC_PREPARING\n");
            }
            if (!mp->ffplayer->start_on_prepared) {
                FUNC7(mp, MP_STATE_PAUSED);
            }
            FUNC14(&mp->mutex);
            break;

        case FFP_MSG_COMPLETED:
            FUNC0("ijkmp_get_msg: FFP_MSG_COMPLETED\n");

            FUNC13(&mp->mutex);
            mp->restart = 1;
            mp->restart_from_beginning = 1;
            FUNC7(mp, MP_STATE_COMPLETED);
            FUNC14(&mp->mutex);
            break;

        case FFP_MSG_SEEK_COMPLETE:
            FUNC0("ijkmp_get_msg: FFP_MSG_SEEK_COMPLETE\n");

            FUNC13(&mp->mutex);
            mp->seek_req = 0;
            mp->seek_msec = 0;
            FUNC14(&mp->mutex);
            break;

        case FFP_REQ_START:
            FUNC0("ijkmp_get_msg: FFP_REQ_START\n");
            continue_wait_next_msg = 1;
            FUNC13(&mp->mutex);
            if (0 == FUNC10(mp->mp_state)) {
                // FIXME: 8 check seekable
                if (mp->restart) {
                    if (mp->restart_from_beginning) {
                        FUNC2(mp->ffplayer, AV_LOG_DEBUG, "ijkmp_get_msg: FFP_REQ_START: restart from beginning\n");
                        retval = FUNC5(mp->ffplayer, 0);
                        if (retval == 0)
                            FUNC7(mp, MP_STATE_STARTED);
                    } else {
                        FUNC2(mp->ffplayer, AV_LOG_DEBUG, "ijkmp_get_msg: FFP_REQ_START: restart from seek pos\n");
                        retval = FUNC6(mp->ffplayer);
                        if (retval == 0)
                            FUNC7(mp, MP_STATE_STARTED);
                    }
                    mp->restart = 0;
                    mp->restart_from_beginning = 0;
                } else {
                    FUNC2(mp->ffplayer, AV_LOG_DEBUG, "ijkmp_get_msg: FFP_REQ_START: start on fly\n");
                    retval = FUNC6(mp->ffplayer);
                    if (retval == 0)
                        FUNC7(mp, MP_STATE_STARTED);
                }
            }
            FUNC14(&mp->mutex);
            break;

        case FFP_REQ_PAUSE:
            FUNC0("ijkmp_get_msg: FFP_REQ_PAUSE\n");
            continue_wait_next_msg = 1;
            FUNC13(&mp->mutex);
            if (0 == FUNC8(mp->mp_state)) {
                int pause_ret = FUNC3(mp->ffplayer);
                if (pause_ret == 0)
                    FUNC7(mp, MP_STATE_PAUSED);
            }
            FUNC14(&mp->mutex);
            break;

        case FFP_REQ_SEEK:
            FUNC0("ijkmp_get_msg: FFP_REQ_SEEK\n");
            continue_wait_next_msg = 1;

            FUNC13(&mp->mutex);
            if (0 == FUNC9(mp->mp_state)) {
                mp->restart_from_beginning = 0;
                if (0 == FUNC4(mp->ffplayer, msg->arg1)) {
                    FUNC2(mp->ffplayer, AV_LOG_DEBUG, "ijkmp_get_msg: FFP_REQ_SEEK: seek to %d\n", (int)msg->arg1);
                }
            }
            FUNC14(&mp->mutex);
            break;
        }
        if (continue_wait_next_msg) {
            FUNC11(msg);
            continue;
        }

        return retval;
    }

    return -1;
}