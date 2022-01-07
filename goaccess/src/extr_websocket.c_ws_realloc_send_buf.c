
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int qlen; char* queued; } ;
typedef TYPE_1__ WSQueue ;
struct TYPE_7__ {int status; TYPE_1__* sockqueue; } ;
typedef TYPE_2__ WSClient ;


 int WS_CLOSE ;
 int WS_ERR ;
 int WS_THROTTLE_THLD ;
 int WS_THROTTLING ;
 int memcpy (char*,char const*,int) ;
 char* realloc (char*,int) ;
 int ws_clear_queue (TYPE_2__*) ;
 int ws_set_status (TYPE_2__*,int,int) ;

__attribute__((used)) static int
ws_realloc_send_buf (WSClient * client, const char *buf, int len)
{
  WSQueue *queue = client->sockqueue;
  char *tmp = ((void*)0);
  int newlen = 0;

  newlen = queue->qlen + len;
  tmp = realloc (queue->queued, newlen);
  if (tmp == ((void*)0) && newlen > 0) {
    ws_clear_queue (client);
    return ws_set_status (client, WS_ERR | WS_CLOSE, 1);
  }
  queue->queued = tmp;
  memcpy (queue->queued + queue->qlen, buf, len);
  queue->qlen += len;



  if (queue->qlen >= WS_THROTTLE_THLD)
    client->status |= WS_THROTTLING;

  return 0;
}
