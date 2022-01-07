
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_fcgi_generator_t {int dummy; } ;
typedef int h2o_req_t ;
typedef int h2o_generator_t ;


 int close_generator (struct st_fcgi_generator_t*) ;

__attribute__((used)) static void do_stop(h2o_generator_t *_generator, h2o_req_t *req)
{
    struct st_fcgi_generator_t *generator = (void *)_generator;
    close_generator(generator);
}
