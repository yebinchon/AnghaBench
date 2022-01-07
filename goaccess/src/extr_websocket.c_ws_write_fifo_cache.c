
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int qlen; int queued; } ;
typedef TYPE_1__ WSQueue ;
struct TYPE_7__ {int fd; TYPE_1__* fifoqueue; } ;
typedef TYPE_2__ WSPipeOut ;


 scalar_t__ EPIPE ;
 scalar_t__ chop_nchars (int ,int,int) ;
 int clear_fifo_queue (TYPE_2__*) ;
 int close (int ) ;
 scalar_t__ errno ;
 int write (int ,int ,int) ;
 int ws_openfifo_out (TYPE_2__*) ;

__attribute__((used)) static int
ws_write_fifo_cache (WSPipeOut * pipeout)
{
  WSQueue *queue = pipeout->fifoqueue;
  int bytes = 0;

  bytes = write (pipeout->fd, queue->queued, queue->qlen);




  if (bytes == -1 && errno == EPIPE) {
    close (pipeout->fd);
    ws_openfifo_out (pipeout);
    return bytes;
  }

  if (chop_nchars (queue->queued, bytes, queue->qlen) == 0)
    clear_fifo_queue (pipeout);
  else
    queue->qlen -= bytes;

  return bytes;
}
