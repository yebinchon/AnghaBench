
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fd; int status; int * fifoqueue; } ;
typedef TYPE_1__ WSPipeOut ;


 int WS_SENDING ;
 int ws_openfifo_out (TYPE_1__*) ;
 int ws_realloc_fifobuf (TYPE_1__*,char*,int) ;
 int ws_write_fifo_cache (TYPE_1__*) ;
 int ws_write_fifo_data (TYPE_1__*,char*,int) ;

int
ws_write_fifo (WSPipeOut * pipeout, char *buffer, int len)
{
  int bytes = 0;

  if (pipeout->fd == -1 && ws_openfifo_out (pipeout) == -1)
    return bytes;


  if (pipeout->fifoqueue == ((void*)0))
    bytes = ws_write_fifo_data (pipeout, buffer, len);

  else if (pipeout->fifoqueue != ((void*)0) && buffer != ((void*)0)) {
    if (ws_realloc_fifobuf (pipeout, buffer, len) == 1)
      return bytes;
  }

  else {
    bytes = ws_write_fifo_cache (pipeout);
  }

  if (pipeout->fifoqueue == ((void*)0))
    pipeout->status &= ~WS_SENDING;

  return bytes;
}
