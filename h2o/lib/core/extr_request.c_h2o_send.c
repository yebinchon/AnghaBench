
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_sendvec_t ;
typedef int h2o_send_state_t ;
typedef int h2o_req_t ;
struct TYPE_3__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int * alloca (int) ;
 int do_sendvec (int *,int *,size_t,int ) ;
 int h2o_sendvec_init_raw (int *,int ,int ) ;

void h2o_send(h2o_req_t *req, h2o_iovec_t *bufs, size_t bufcnt, h2o_send_state_t state)
{
    h2o_sendvec_t *vecs = alloca(sizeof(*vecs) * bufcnt);
    size_t i;

    for (i = 0; i != bufcnt; ++i)
        h2o_sendvec_init_raw(vecs + i, bufs[i].base, bufs[i].len);

    do_sendvec(req, vecs, bufcnt, state);
}
