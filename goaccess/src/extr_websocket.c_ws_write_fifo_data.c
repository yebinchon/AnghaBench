
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
typedef TYPE_1__ WSPipeOut ;


 scalar_t__ EAGAIN ;
 scalar_t__ EPIPE ;
 scalar_t__ EWOULDBLOCK ;
 int close (int ) ;
 scalar_t__ errno ;
 int write (int ,char*,int) ;
 int ws_openfifo_out (TYPE_1__*) ;
 int ws_queue_fifobuf (TYPE_1__*,char*,int,int) ;

__attribute__((used)) static int
ws_write_fifo_data (WSPipeOut * pipeout, char *buffer, int len)
{
  int bytes = 0;

  bytes = write (pipeout->fd, buffer, len);




  if (bytes == -1 && errno == EPIPE) {
    close (pipeout->fd);
    ws_openfifo_out (pipeout);
    return bytes;
  }
  if (bytes < len || (bytes == -1 && (errno == EAGAIN || errno == EWOULDBLOCK)))
    ws_queue_fifobuf (pipeout, buffer, len, bytes);

  return bytes;
}
