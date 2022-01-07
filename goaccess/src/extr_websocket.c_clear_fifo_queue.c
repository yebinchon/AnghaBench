
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ qlen; struct TYPE_5__* queued; } ;
typedef TYPE_1__ WSQueue ;
struct TYPE_6__ {TYPE_1__* fifoqueue; } ;
typedef TYPE_2__ WSPipeOut ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
clear_fifo_queue (WSPipeOut * pipeout)
{
  WSQueue **queue = &pipeout->fifoqueue;
  if (!(*queue))
    return;

  if ((*queue)->queued)
    free ((*queue)->queued);
  (*queue)->queued = ((void*)0);
  (*queue)->qlen = 0;

  free ((*queue));
  (*queue) = ((void*)0);
}
