
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_req_t ;
typedef int h2o_handler_t ;


 scalar_t__ h2o_is_websocket_handshake (int *,char const**) ;
 int h2o_upgrade_to_websocket (int *,char const*,int *,int ) ;
 int on_ws_message ;

__attribute__((used)) static int on_req(h2o_handler_t *self, h2o_req_t *req)
{
    const char *client_key;

    if (h2o_is_websocket_handshake(req, &client_key) != 0 || client_key == ((void*)0)) {
        return -1;
    }
    h2o_upgrade_to_websocket(req, client_key, ((void*)0), on_ws_message);
    return 0;
}
