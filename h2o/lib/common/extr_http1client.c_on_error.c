
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* on_body ) (TYPE_3__*,char const*) ;int (* on_head ) (TYPE_3__*,char const*,int ,int ,int ,int *,int ,int ) ;} ;
struct TYPE_8__ {TYPE_1__ _cb; } ;
struct TYPE_7__ {int res; } ;
struct st_h2o_http1client_t {TYPE_3__ super; int (* proceed_req ) (TYPE_3__*,int ,int ) ;TYPE_2__ state; scalar_t__ _do_keepalive; } ;


 int H2O_SEND_STATE_ERROR ;



 int close_client (struct st_h2o_http1client_t*) ;
 int h2o_iovec_init (int *,int ) ;
 int stub1 (TYPE_3__*,char const*,int ,int ,int ,int *,int ,int ) ;
 int stub2 (TYPE_3__*,char const*) ;
 int stub3 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void on_error(struct st_h2o_http1client_t *client, const char *errstr)
{
    client->_do_keepalive = 0;
    switch (client->state.res) {
    case 128:
        client->super._cb.on_head(&client->super, errstr, 0, 0, h2o_iovec_init(((void*)0), 0), ((void*)0), 0, 0);
        break;
    case 130:
        client->super._cb.on_body(&client->super, errstr);
        break;
    case 129:
        if (client->proceed_req != ((void*)0)) {
            client->proceed_req(&client->super, 0, H2O_SEND_STATE_ERROR);
        }
        break;
    }
    close_client(client);
}
