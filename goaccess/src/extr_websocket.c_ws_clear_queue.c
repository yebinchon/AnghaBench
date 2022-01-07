
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ qlen; struct TYPE_5__* queued; } ;
typedef TYPE_1__ WSQueue ;
struct TYPE_6__ {int status; TYPE_1__* sockqueue; } ;
typedef TYPE_2__ WSClient ;


 int WS_CLOSE ;
 int WS_SENDING ;
 int WS_THROTTLING ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
ws_clear_queue (WSClient * client)
{
  WSQueue **queue = &client->sockqueue;
  if (!(*queue))
    return;

  if ((*queue)->queued)
    free ((*queue)->queued);
  (*queue)->queued = ((void*)0);
  (*queue)->qlen = 0;

  free ((*queue));
  (*queue) = ((void*)0);


  client->status &= ~WS_THROTTLING;

  if ((client->status & WS_CLOSE) && (client->status & WS_SENDING))
    client->status = WS_CLOSE;
}
