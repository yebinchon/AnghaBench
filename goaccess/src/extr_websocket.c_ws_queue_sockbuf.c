
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int qlen; void* queued; } ;
typedef TYPE_1__ WSQueue ;
struct TYPE_5__ {int status; TYPE_1__* sockqueue; } ;
typedef TYPE_2__ WSClient ;


 int WS_SENDING ;
 int memcpy (void*,char const*,int) ;
 void* xcalloc (int,int) ;

__attribute__((used)) static void
ws_queue_sockbuf (WSClient * client, const char *buffer, int len, int bytes)
{
  WSQueue *queue = xcalloc (1, sizeof (WSQueue));

  if (bytes < 1)
    bytes = 0;

  queue->queued = xcalloc (len - bytes, sizeof (char));
  memcpy (queue->queued, buffer + bytes, len - bytes);
  queue->qlen = len - bytes;
  client->sockqueue = queue;

  client->status |= WS_SENDING;
}
