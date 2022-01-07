
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPST_RET_IF_EQ (int,int ) ;
 int MP_STATE_ASYNC_PREPARING ;
 int MP_STATE_END ;
 int MP_STATE_ERROR ;
 int MP_STATE_IDLE ;
 int MP_STATE_INITIALIZED ;
 int MP_STATE_STOPPED ;

__attribute__((used)) static int ikjmp_chkst_pause_l(int mp_state)
{
    MPST_RET_IF_EQ(mp_state, MP_STATE_IDLE);
    MPST_RET_IF_EQ(mp_state, MP_STATE_INITIALIZED);
    MPST_RET_IF_EQ(mp_state, MP_STATE_ASYNC_PREPARING);




    MPST_RET_IF_EQ(mp_state, MP_STATE_STOPPED);
    MPST_RET_IF_EQ(mp_state, MP_STATE_ERROR);
    MPST_RET_IF_EQ(mp_state, MP_STATE_END);

    return 0;
}
