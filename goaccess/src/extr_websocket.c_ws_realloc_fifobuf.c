
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int qlen; char* queued; } ;
typedef TYPE_1__ WSQueue ;
struct TYPE_7__ {int fd; TYPE_1__* fifoqueue; } ;
typedef TYPE_2__ WSPipeOut ;


 int clear_fifo_queue (TYPE_2__*) ;
 int close (int ) ;
 int memcpy (char*,char const*,int) ;
 char* realloc (char*,int) ;
 int ws_openfifo_out (TYPE_2__*) ;

__attribute__((used)) static int
ws_realloc_fifobuf (WSPipeOut * pipeout, const char *buf, int len)
{
  WSQueue *queue = pipeout->fifoqueue;
  char *tmp = ((void*)0);
  int newlen = 0;

  newlen = queue->qlen + len;
  tmp = realloc (queue->queued, newlen);
  if (tmp == ((void*)0) && newlen > 0) {
    close (pipeout->fd);
    clear_fifo_queue (pipeout);
    ws_openfifo_out (pipeout);
    return 1;
  }

  queue->queued = tmp;
  memcpy (queue->queued + queue->qlen, buf, len);
  queue->qlen += len;

  return 0;
}
