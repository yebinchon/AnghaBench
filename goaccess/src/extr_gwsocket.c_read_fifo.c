
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int fd_set ;
struct TYPE_5__ {int type; int size; char* data; int len; } ;
typedef TYPE_1__ WSPacket ;
struct TYPE_6__ {int fd; int* self_pipe; int hlen; char* hdr; TYPE_1__* packet; } ;
typedef TYPE_2__ GWSReader ;



 int FATAL (char*,int ) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int HDR_SIZE ;
 int LOG (char*) ;
 int MAX (int,int) ;
 int clear_fifo_packet (TYPE_2__*) ;
 int errno ;
 int select (int,int *,int *,int *,int *) ;
 int strerror (int) ;
 void stub1 (int) ;
 int unpack_uint32 (char*,int*) ;
 int ws_read_fifo (int,char*,int*,int,int) ;
 void* xcalloc (int,int) ;

int
read_fifo (GWSReader * gwsreader, fd_set rfds, fd_set wfds, void (*f) (int))
{
  WSPacket **pa = &gwsreader->packet;
  char *ptr;
  int bytes = 0, readh = 0, need = 0, fd = gwsreader->fd, max = 0;
  uint32_t listener = 0, type = 0, size = 0;

  FD_ZERO (&rfds);
  FD_ZERO (&wfds);

  FD_SET (gwsreader->self_pipe[0], &rfds);

  FD_SET (fd, &rfds);
  max = MAX (fd, gwsreader->self_pipe[0]);

  if (select (max + 1, &rfds, &wfds, ((void*)0), ((void*)0)) == -1) {
    switch (errno) {
    case 128:
      break;
    default:
      FATAL ("Unable to select: %s.", strerror (errno));
    }
  }

  if (FD_ISSET (gwsreader->self_pipe[0], &rfds))
    return 1;
  if (!FD_ISSET (fd, &rfds)) {
    LOG (("No file descriptor set on read_message()\n"));
    return 0;
  }

  readh = gwsreader->hlen;
  need = HDR_SIZE - readh;
  if (need > 0) {
    if ((bytes =
         ws_read_fifo (fd, gwsreader->hdr, &gwsreader->hlen, readh, need)) < 0)
      return 0;
    if (bytes != need)
      return 0;
  }


  ptr = gwsreader->hdr;
  ptr += unpack_uint32 (ptr, &listener);
  ptr += unpack_uint32 (ptr, &type);
  ptr += unpack_uint32 (ptr, &size);

  if ((*pa) == ((void*)0)) {
    (*pa) = xcalloc (1, sizeof (WSPacket));
    (*pa)->type = type;
    (*pa)->size = size;
    (*pa)->data = xcalloc (size, sizeof (char));
  }

  readh = (*pa)->len;
  need = (*pa)->size - readh;
  if (need > 0) {
    if ((bytes = ws_read_fifo (fd, (*pa)->data, &(*pa)->len, readh, need)) < 0)
      return 0;
    if (bytes != need)
      return 0;
  }
  clear_fifo_packet (gwsreader);

  (*f) (listener);

  return 0;
}
