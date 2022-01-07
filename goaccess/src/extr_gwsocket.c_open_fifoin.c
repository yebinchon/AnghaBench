
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* fifo_in; } ;


 int O_NONBLOCK ;
 int O_WRONLY ;
 char* WS_PIPEIN ;
 TYPE_1__ conf ;
 int open (char const*,int) ;

int
open_fifoin (void)
{
  const char *fifo = conf.fifo_in ? conf.fifo_in : WS_PIPEIN;
  int fdfifo;

  if ((fdfifo = open (fifo, O_WRONLY | O_NONBLOCK)) == -1)
    return -1;

  return fdfifo;
}
