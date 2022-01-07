
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_sendfile_generator_t {int dummy; } ;
struct TYPE_3__ {scalar_t__* cb_arg; } ;
typedef TYPE_1__ h2o_sendvec_t ;
typedef int h2o_req_t ;


 int h2o_mem_addref_shared (struct st_h2o_sendfile_generator_t*) ;
 int h2o_mem_release_shared (struct st_h2o_sendfile_generator_t*) ;

__attribute__((used)) static void sendvec_update_refcnt(h2o_sendvec_t *vec, h2o_req_t *req, int is_incr)
{
    struct st_h2o_sendfile_generator_t *self = (void *)vec->cb_arg[0];

    if (is_incr) {
        h2o_mem_addref_shared(self);
    } else {
        h2o_mem_release_shared(self);
    }
}
