
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* callbacks; } ;
typedef TYPE_2__ h2o_sendvec_t ;
typedef int h2o_send_state_t ;
typedef int h2o_req_t ;
struct TYPE_5__ {int * flatten; } ;


 int assert (int) ;
 int do_sendvec (int *,TYPE_2__*,size_t,int ) ;
 int h2o_sendvec_flatten_raw ;

void h2o_sendvec(h2o_req_t *req, h2o_sendvec_t *bufs, size_t bufcnt, h2o_send_state_t state)
{
    assert(bufcnt == 0 || (bufs[0].callbacks->flatten == &h2o_sendvec_flatten_raw || bufcnt == 1));
    do_sendvec(req, bufs, bufcnt, state);
}
