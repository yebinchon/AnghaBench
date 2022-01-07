
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rp_generator_t {int req_done; scalar_t__ res_done; TYPE_2__* src_req; TYPE_3__* client; } ;
typedef int h2o_iovec_t ;
struct TYPE_7__ {int (* write_req ) (TYPE_3__*,int ,int) ;} ;
typedef TYPE_3__ h2o_httpclient_t ;
struct TYPE_5__ {int * cb; } ;
struct TYPE_6__ {TYPE_1__ write_req; } ;


 int detach_client (struct rp_generator_t*) ;
 int stub1 (TYPE_3__*,int ,int) ;

__attribute__((used)) static int write_req(void *ctx, h2o_iovec_t chunk, int is_end_stream)
{
    struct rp_generator_t *self = ctx;
    h2o_httpclient_t *client = self->client;

    if (client == ((void*)0)) {
        return -1;
    }

    if (is_end_stream) {
        self->src_req->write_req.cb = ((void*)0);
        self->req_done = 1;
        if (self->res_done)
            detach_client(self);
    }

    return client->write_req(client, chunk, is_end_stream);
}
