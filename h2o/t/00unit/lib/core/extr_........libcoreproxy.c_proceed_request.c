
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rp_generator_t {TYPE_2__* src_req; } ;
typedef int h2o_send_state_t ;
struct TYPE_4__ {struct rp_generator_t* data; } ;
typedef TYPE_1__ h2o_httpclient_t ;
struct TYPE_5__ {int (* proceed_req ) (TYPE_2__*,size_t,int ) ;} ;


 int H2O_SEND_STATE_ERROR ;
 int detach_client (struct rp_generator_t*) ;
 int stub1 (TYPE_2__*,size_t,int ) ;

__attribute__((used)) static void proceed_request(h2o_httpclient_t *client, size_t written, h2o_send_state_t send_state)
{
    struct rp_generator_t *self = client->data;
    if (self == ((void*)0)) {
        return;
    }
    if (send_state == H2O_SEND_STATE_ERROR) {
        detach_client(self);
    }
    if (self->src_req->proceed_req != ((void*)0))
        self->src_req->proceed_req(self->src_req, written, send_state);
}
