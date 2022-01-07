
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int raw; } ;
typedef TYPE_1__ h2o_sendvec_t ;
typedef int h2o_req_t ;


 int assert (int) ;
 int free (int ) ;

__attribute__((used)) static void allocated_vec_update_refcnt(h2o_sendvec_t *vec, h2o_req_t *req, int is_incr)
{
    assert(!is_incr);
    free(vec->raw);
}
