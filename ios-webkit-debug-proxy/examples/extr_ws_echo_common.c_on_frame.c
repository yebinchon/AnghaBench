
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
typedef int uint8_t ;
struct TYPE_7__ {int (* send_frame ) (TYPE_1__*,int,int,int,char const*,size_t) ;int (* send_close ) (TYPE_1__*,int ,char*) ;} ;


 int CLOSE_NORMAL ;
 int CLOSE_PROTOCOL_ERROR ;





 int WS_ERROR ;
 int WS_SUCCESS ;
 int stub1 (TYPE_1__*,int ,char*) ;
 int stub2 (TYPE_1__*,int,int,int,char const*,size_t) ;
 int stub3 (TYPE_1__*,int ,char*) ;
 int stub4 (TYPE_1__*,int,int,int,char const*,size_t) ;

ws_status on_frame(ws_t ws,
    bool is_fin, uint8_t opcode, bool is_masking,
    const char *payload_data, size_t payload_length,
    bool *to_keep) {
  switch (opcode) {
    case 128:
    case 132:
      if (!is_fin) {

        *to_keep = 1;
        return WS_SUCCESS;
      }
      if (!is_masking) {
        return ws->send_close(ws, CLOSE_PROTOCOL_ERROR,
            "Clients must mask");
      }

      return ws->send_frame(ws,
          1, opcode, 0,
          payload_data, payload_length);

    case 131:

      return ws->send_close(ws, CLOSE_NORMAL, ((void*)0));

    case 130:

      return ws->send_frame(ws,
          1, 129, 0,
          payload_data, payload_length);

    case 129:
      return WS_SUCCESS;

    default:
      return WS_ERROR;
  }
}
