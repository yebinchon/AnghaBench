
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* payload; int buflen; int payloadsz; } ;
typedef TYPE_1__ WSMessage ;
struct TYPE_8__ {int status; } ;
typedef TYPE_2__ WSClient ;


 int WS_CLOSE ;
 int WS_CLOSE_UNEXPECTED ;
 int read_socket (TYPE_2__*,char*,int) ;
 int ws_error (TYPE_2__*,int ,char*) ;

__attribute__((used)) static int
ws_read_payload (WSClient * client, WSMessage * msg, int pos, int need)
{
  char *buf = msg->payload;
  int bytes = 0;


  if ((bytes = read_socket (client, buf + pos, need)) < 1) {
    if (client->status & WS_CLOSE)
      ws_error (client, WS_CLOSE_UNEXPECTED, "Unable to read payload");
    return bytes;
  }
  msg->buflen += bytes;
  msg->payloadsz += bytes;

  return bytes;
}
