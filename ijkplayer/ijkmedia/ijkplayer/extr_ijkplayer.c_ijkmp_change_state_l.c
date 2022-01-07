
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mp_state; int ffplayer; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int FFP_MSG_PLAYBACK_STATE_CHANGED ;
 int ffp_notify_msg1 (int ,int ) ;

void ijkmp_change_state_l(IjkMediaPlayer *mp, int new_state)
{
    mp->mp_state = new_state;
    ffp_notify_msg1(mp->ffplayer, FFP_MSG_PLAYBACK_STATE_CHANGED);
}
