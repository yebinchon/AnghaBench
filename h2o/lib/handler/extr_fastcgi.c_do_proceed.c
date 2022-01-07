
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sending; } ;
struct st_fcgi_generator_t {TYPE_1__ resp; } ;
typedef int h2o_req_t ;
typedef int h2o_generator_t ;


 int do_send (struct st_fcgi_generator_t*) ;
 int h2o_doublebuffer_consume (int *) ;

__attribute__((used)) static void do_proceed(h2o_generator_t *_generator, h2o_req_t *req)
{
    struct st_fcgi_generator_t *generator = (void *)_generator;

    h2o_doublebuffer_consume(&generator->resp.sending);
    do_send(generator);
}
