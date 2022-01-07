
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
typedef TYPE_2__* ws_private_t ;
struct TYPE_6__ {char* protocol; char* sec_key; char* req_host; int is_websocket; int version; } ;
struct TYPE_5__ {TYPE_2__* private_state; } ;


 int WS_SUCCESS ;
 int free (char*) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strcasestr (char*,char*) ;
 void* strdup (char*) ;
 char* strrchr (char*,char) ;
 int strtol (char*,int *,int ) ;
 scalar_t__ ws_read_http_header (TYPE_1__*,char**,char**) ;

ws_status ws_read_headers(ws_t self) {
  ws_private_t my = self->private_state;

  bool is_connection = 0;
  bool is_upgrade = 0;
  while (1) {
    char *key;
    char *val;
    if (ws_read_http_header(self, &key, &val) || !key) {
      break;
    }
    if (!strcasecmp(key, "Connection")) {

      is_connection = (strcasestr(val, "Upgrade") ? 1 : 0);
    } else if (!strcasecmp(key, "Upgrade")) {
      is_upgrade = !strcasecmp(val, "WebSocket");
    } else if (!strcasecmp(key, "Sec-WebSocket-Protocol")) {
      free(my->protocol);
      my->protocol = strdup(val);
    } else if (!strcasecmp(key, "Sec-WebSocket-Version")) {
      my->version = strtol(val, ((void*)0), 0);
    } else if (!strcasecmp(key, "Sec-WebSocket-Key")) {
      free(my->sec_key);
      my->sec_key = strdup(val);
    } else if (!strcasecmp(key, "Host")) {
      free(my->req_host);
      char *p = strrchr(val, ':');
      if (p) {
        *p = 0;
      }
      my->req_host = strdup(val);
    }
    free(key);
    free(val);
  }

  my->is_websocket = (is_connection && is_upgrade && my->sec_key);
  return WS_SUCCESS;
}
