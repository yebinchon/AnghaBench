
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*,int ) ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int errno ;
 int fcntl (int,int ,int) ;
 int strerror (int ) ;

void
set_nonblocking (int sock)
{
  if (fcntl (sock, F_SETFL, fcntl (sock, F_GETFL, 0) | O_NONBLOCK) == -1)
    FATAL ("Unable to set socket as non-blocking: %s.", strerror (errno));
}
