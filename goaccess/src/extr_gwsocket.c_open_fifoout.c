
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* fifo_out; } ;


 int O_NONBLOCK ;
 int O_RDWR ;
 char* WS_PIPEOUT ;
 TYPE_1__ conf ;
 int open (char const*,int) ;
 int ws_setfifo (char const*) ;

int
open_fifoout (void)
{
  const char *fifo = conf.fifo_out ? conf.fifo_out : WS_PIPEOUT;
  int fdfifo;


  ws_setfifo (fifo);
  if ((fdfifo = open (fifo, O_RDWR | O_NONBLOCK)) == -1)
    return -1;

  return fdfifo;
}
