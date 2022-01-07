
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rp_generator_t {TYPE_1__* client; } ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ h2o_httpclient_t ;


 int assert (int ) ;

__attribute__((used)) static h2o_httpclient_t *detach_client(struct rp_generator_t *self)
{
    h2o_httpclient_t *client = self->client;
    assert(client != ((void*)0));
    client->data = ((void*)0);
    self->client = ((void*)0);
    return client;
}
