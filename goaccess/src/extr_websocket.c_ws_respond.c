
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int status; int * sockqueue; } ;
typedef TYPE_1__ WSClient ;


 int WS_THROTTLING ;
 int ws_realloc_send_buf (TYPE_1__*,char const*,int) ;
 int ws_respond_cache (TYPE_1__*) ;
 int ws_respond_data (TYPE_1__*,char const*,int) ;

__attribute__((used)) static int
ws_respond (WSClient * client, const char *buffer, int len)
{
  int bytes = 0;


  if (client->sockqueue == ((void*)0))
    bytes = ws_respond_data (client, buffer, len);


  else if (client->sockqueue != ((void*)0) && buffer != ((void*)0) &&
           !(client->status & WS_THROTTLING)) {
    if (ws_realloc_send_buf (client, buffer, len) == 1)
      return bytes;
  }

  else {
    bytes = ws_respond_cache (client);
  }

  return bytes;
}
