
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ WSPipeOut ;
struct TYPE_5__ {int pipeout; } ;


 scalar_t__ ENXIO ;
 int FATAL (char*,int ) ;
 int LOG (char*) ;
 int O_NONBLOCK ;
 int O_WRONLY ;
 scalar_t__ errno ;
 int max_file_fd ;
 int open (int ,int) ;
 int strerror (scalar_t__) ;
 int ws_setfifo (int ) ;
 TYPE_2__ wsconfig ;

__attribute__((used)) static int
ws_openfifo_out (WSPipeOut * pipeout)
{
  int status = 0;

  ws_setfifo (wsconfig.pipeout);
  status = open (wsconfig.pipeout, O_WRONLY | O_NONBLOCK);

  if (status == -1 && errno == ENXIO)
    LOG (("Unable to open fifo out: %s.\n", strerror (errno)));
  else if (status < 0)
    FATAL ("Unable to open fifo out: %s.", strerror (errno));
  pipeout->fd = status;

  if (status != -1 && status > max_file_fd)
    max_file_fd = status;

  return status;
}
