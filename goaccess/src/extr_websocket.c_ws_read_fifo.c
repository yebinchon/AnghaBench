
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ errno ;
 int read (int,char*,int) ;

int
ws_read_fifo (int fd, char *buf, int *buflen, int pos, int need)
{
  int bytes = 0;

  bytes = read (fd, buf + pos, need);
  if (bytes == -1 && (errno == EAGAIN || errno == EWOULDBLOCK))
    return bytes;
  else if (bytes == -1)
    return bytes;
  *buflen += bytes;

  return bytes;
}
