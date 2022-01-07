
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int msg_queue; } ;
struct TYPE_9__ {struct TYPE_9__* data_source; TYPE_5__* ffplayer; int _msg_thread; int msg_thread; int mp_state; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int MPST_RET_IF_EQ (int ,int ) ;
 int MP_STATE_ASYNC_PREPARING ;
 int MP_STATE_COMPLETED ;
 int MP_STATE_END ;
 int MP_STATE_ERROR ;
 int MP_STATE_IDLE ;
 int MP_STATE_PAUSED ;
 int MP_STATE_PREPARED ;
 int MP_STATE_STARTED ;
 int SDL_CreateThreadEx (int *,int ,TYPE_1__*,char*) ;
 int assert (TYPE_1__*) ;
 int ffp_prepare_async_l (TYPE_5__*,TYPE_1__*) ;
 int ijkmp_change_state_l (TYPE_1__*,int ) ;
 int ijkmp_inc_ref (TYPE_1__*) ;
 int ijkmp_msg_loop ;
 int msg_queue_start (int *) ;

__attribute__((used)) static int ijkmp_prepare_async_l(IjkMediaPlayer *mp)
{
    assert(mp);

    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_IDLE);

    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_ASYNC_PREPARING);
    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_PREPARED);
    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_STARTED);
    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_PAUSED);
    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_COMPLETED);

    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_ERROR);
    MPST_RET_IF_EQ(mp->mp_state, MP_STATE_END);

    assert(mp->data_source);

    ijkmp_change_state_l(mp, MP_STATE_ASYNC_PREPARING);

    msg_queue_start(&mp->ffplayer->msg_queue);


    ijkmp_inc_ref(mp);
    mp->msg_thread = SDL_CreateThreadEx(&mp->_msg_thread, ijkmp_msg_loop, mp, "ff_msg_loop");



    int retval = ffp_prepare_async_l(mp->ffplayer, mp->data_source);
    if (retval < 0) {
        ijkmp_change_state_l(mp, MP_STATE_ERROR);
        return retval;
    }

    return 0;
}
