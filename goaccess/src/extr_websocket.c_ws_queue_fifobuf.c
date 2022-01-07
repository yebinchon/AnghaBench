
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int qlen; void* queued; } ;
typedef TYPE_1__ WSQueue ;
struct TYPE_5__ {int status; TYPE_1__* fifoqueue; } ;
typedef TYPE_2__ WSPipeOut ;


 int WS_SENDING ;
 int memcpy (void*,char const*,int) ;
 void* xcalloc (int,int) ;

__attribute__((used)) static void
ws_queue_fifobuf (WSPipeOut * pipeout, const char *buffer, int len, int bytes)
{
  WSQueue **queue = &pipeout->fifoqueue;

  if (bytes < 1)
    bytes = 0;

  (*queue) = xcalloc (1, sizeof (WSQueue));
  (*queue)->queued = xcalloc (len - bytes, sizeof (char));
  memcpy ((*queue)->queued, buffer + bytes, len - bytes);
  (*queue)->qlen = len - bytes;

  pipeout->status |= WS_SENDING;
}
