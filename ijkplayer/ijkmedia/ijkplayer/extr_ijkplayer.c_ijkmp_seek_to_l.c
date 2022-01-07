
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int seek_req; long seek_msec; int ffplayer; int mp_state; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int FFP_REQ_SEEK ;
 int MP_RET_IF_FAILED (int ) ;
 int assert (TYPE_1__*) ;
 int ffp_notify_msg2 (int ,int ,int) ;
 int ffp_remove_msg (int ,int ) ;
 int ikjmp_chkst_seek_l (int ) ;

int ijkmp_seek_to_l(IjkMediaPlayer *mp, long msec)
{
    assert(mp);

    MP_RET_IF_FAILED(ikjmp_chkst_seek_l(mp->mp_state));

    mp->seek_req = 1;
    mp->seek_msec = msec;
    ffp_remove_msg(mp->ffplayer, FFP_REQ_SEEK);
    ffp_notify_msg2(mp->ffplayer, FFP_REQ_SEEK, (int)msec);


    return 0;
}
