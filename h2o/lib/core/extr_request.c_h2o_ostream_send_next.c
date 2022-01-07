
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_sendvec_t ;
typedef int h2o_send_state_t ;
struct TYPE_7__ {TYPE_2__* _ostr_top; } ;
typedef TYPE_1__ h2o_req_t ;
struct TYPE_8__ {struct TYPE_8__* next; int (* do_send ) (TYPE_2__*,TYPE_1__*,int *,size_t,int ) ;} ;
typedef TYPE_2__ h2o_ostream_t ;


 int assert (int) ;
 int h2o_send_state_is_in_progress (int ) ;
 int stub1 (TYPE_2__*,TYPE_1__*,int *,size_t,int ) ;

void h2o_ostream_send_next(h2o_ostream_t *ostream, h2o_req_t *req, h2o_sendvec_t *bufs, size_t bufcnt, h2o_send_state_t state)
{
    if (!h2o_send_state_is_in_progress(state)) {
        assert(req->_ostr_top == ostream);
        req->_ostr_top = ostream->next;
    }
    ostream->next->do_send(ostream->next, req, bufs, bufcnt, state);
}
