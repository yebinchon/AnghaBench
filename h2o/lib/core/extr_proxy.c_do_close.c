
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rp_generator_t {int send_headers_timeout; int * client; } ;
struct TYPE_4__ {int (* cancel ) (TYPE_1__*) ;} ;
typedef TYPE_1__ h2o_httpclient_t ;


 TYPE_1__* detach_client (struct rp_generator_t*) ;
 int h2o_timer_unlink (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void do_close(struct rp_generator_t *self)
{
    if (self->client != ((void*)0)) {
        h2o_httpclient_t *client = detach_client(self);
        client->cancel(client);
    }
    h2o_timer_unlink(&self->send_headers_timeout);
}
