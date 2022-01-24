#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_STATE_ASYNC_PREPARING ; 
 int /*<<< orphan*/  MP_STATE_END ; 
 int /*<<< orphan*/  MP_STATE_ERROR ; 
 int /*<<< orphan*/  MP_STATE_IDLE ; 
 int /*<<< orphan*/  MP_STATE_INITIALIZED ; 
 int /*<<< orphan*/  MP_STATE_STOPPED ; 

__attribute__((used)) static int FUNC1(int mp_state)
{
    FUNC0(mp_state, MP_STATE_IDLE);
    FUNC0(mp_state, MP_STATE_INITIALIZED);
    FUNC0(mp_state, MP_STATE_ASYNC_PREPARING);
    // MPST_RET_IF_EQ(mp_state, MP_STATE_PREPARED);
    // MPST_RET_IF_EQ(mp_state, MP_STATE_STARTED);
    // MPST_RET_IF_EQ(mp_state, MP_STATE_PAUSED);
    // MPST_RET_IF_EQ(mp_state, MP_STATE_COMPLETED);
    FUNC0(mp_state, MP_STATE_STOPPED);
    FUNC0(mp_state, MP_STATE_ERROR);
    FUNC0(mp_state, MP_STATE_END);

    return 0;
}