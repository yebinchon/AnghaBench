
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp_generator_t {int dummy; } ;
typedef int h2o_req_t ;
typedef int h2o_generator_t ;


 int do_close (struct rp_generator_t*) ;

__attribute__((used)) static void do_stop(h2o_generator_t *generator, h2o_req_t *req)
{
    struct rp_generator_t *self = (void *)generator;
    do_close(self);
}
