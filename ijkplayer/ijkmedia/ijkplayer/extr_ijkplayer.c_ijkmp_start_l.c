
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ffplayer; int mp_state; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int FFP_REQ_PAUSE ;
 int FFP_REQ_START ;
 int MP_RET_IF_FAILED (int ) ;
 int assert (TYPE_1__*) ;
 int ffp_notify_msg1 (int ,int ) ;
 int ffp_remove_msg (int ,int ) ;
 int ikjmp_chkst_start_l (int ) ;

__attribute__((used)) static int ijkmp_start_l(IjkMediaPlayer *mp)
{
    assert(mp);

    MP_RET_IF_FAILED(ikjmp_chkst_start_l(mp->mp_state));

    ffp_remove_msg(mp->ffplayer, FFP_REQ_START);
    ffp_remove_msg(mp->ffplayer, FFP_REQ_PAUSE);
    ffp_notify_msg1(mp->ffplayer, FFP_REQ_START);

    return 0;
}
