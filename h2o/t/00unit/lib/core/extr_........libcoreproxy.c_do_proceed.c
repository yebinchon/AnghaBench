
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rp_generator_t {TYPE_1__* client; int * last_content_before_send; int sending; } ;
typedef int h2o_req_t ;
typedef int h2o_generator_t ;
struct TYPE_2__ {int (* update_window ) (TYPE_1__*) ;} ;


 int do_send (struct rp_generator_t*) ;
 int h2o_doublebuffer_consume (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void do_proceed(h2o_generator_t *generator, h2o_req_t *req)
{
    struct rp_generator_t *self = (void *)generator;

    h2o_doublebuffer_consume(&self->sending);
    do_send(self);
    if (self->last_content_before_send == ((void*)0))
        self->client->update_window(self->client);
}
