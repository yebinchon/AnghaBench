
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int h2o_sendvec_t ;
typedef int h2o_send_state_t ;
struct TYPE_5__ {TYPE_2__* _ostr_top; int * _generator; } ;
typedef TYPE_1__ h2o_req_t ;
struct TYPE_6__ {int (* do_send ) (TYPE_2__*,TYPE_1__*,int *,size_t,int ) ;} ;


 int assert (int ) ;
 int h2o_send_state_is_in_progress (int ) ;
 int stub1 (TYPE_2__*,TYPE_1__*,int *,size_t,int ) ;

__attribute__((used)) static void do_sendvec(h2o_req_t *req, h2o_sendvec_t *bufs, size_t bufcnt, h2o_send_state_t state)
{
    assert(req->_generator != ((void*)0));

    if (!h2o_send_state_is_in_progress(state))
        req->_generator = ((void*)0);

    req->_ostr_top->do_send(req->_ostr_top, req, bufs, bufcnt, state);
}
