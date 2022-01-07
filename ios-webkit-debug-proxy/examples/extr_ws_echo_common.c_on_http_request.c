
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
typedef TYPE_2__* my_t ;
struct TYPE_6__ {int port; } ;
struct TYPE_5__ {int (* send_data ) (TYPE_1__*,char*,int ) ;scalar_t__ state; } ;


 int WS_ERROR ;
 int WS_SUCCESS ;
 char* create_root_response (int ,int) ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;
 int stub1 (TYPE_1__*,char*,int ) ;

ws_status on_http_request(ws_t ws,
    const char *method, const char *resource, const char *version,
    const char *host, const char *headers, size_t headers_length,
    bool is_websocket, bool *to_keep_alive) {
  if (strcmp(method, "GET") || strcmp(resource, "/")) {
    return WS_ERROR;
  }
  if (!is_websocket) {
    char *data = create_root_response(((my_t)ws->state)->port, 3);
    ws_status ret = ws->send_data(ws, data, strlen(data));
    free(data);
    return ret;
  }
  return WS_SUCCESS;
}
