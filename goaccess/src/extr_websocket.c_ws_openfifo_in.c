
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ WSPipeIn ;
struct TYPE_5__ {int pipein; } ;


 int FATAL (char*,int ) ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int errno ;
 int open (int ,int) ;
 int strerror (int ) ;
 int ws_setfifo (int ) ;
 TYPE_2__ wsconfig ;

__attribute__((used)) static int
ws_openfifo_in (WSPipeIn * pipein)
{
  ws_setfifo (wsconfig.pipein);

  if ((pipein->fd = open (wsconfig.pipein, O_RDWR | O_NONBLOCK)) < 0)
    FATAL ("Unable to open fifo in: %s.", strerror (errno));

  return pipein->fd;
}
