
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ffplayer; int mp_state; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int FFP_REQ_PAUSE ;
 int FFP_REQ_START ;
 int MPST_RET_IF_EQ (int ,int ) ;
 int MP_STATE_END ;
 int MP_STATE_ERROR ;
 int MP_STATE_IDLE ;
 int MP_STATE_INITIALIZED ;
 int MP_STATE_STOPPED ;
 int assert (TYPE_1__*) ;
 int ffp_remove_msg (int ,int ) ;
 int ffp_stop_l (int ) ;
 int ijkmp_change_state_l (TYPE_1__*,int ) ;

__attribute__((used)) static int ijkmp_stop_l(IjkMediaPlayer *mp)
{
    assert(mp);

    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_IDLE);
    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_INITIALIZED);






    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_ERROR);
    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_END);

    ffp_remove_msg(mp->ffplayer, FFP_REQ_START);
    ffp_remove_msg(mp->ffplayer, FFP_REQ_PAUSE);
    int retval = ffp_stop_l(mp->ffplayer);
    if (retval < 0) {
        return retval;
    }

    ijkmp_change_state_l(mp, MP_STATE_STOPPED);
    return 0;
}
