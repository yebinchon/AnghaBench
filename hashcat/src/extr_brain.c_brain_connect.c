
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int so_error ;
typedef int msg ;


 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int F_GETFL ;
 int F_SETFL ;
 int FormatMessage (int,int *,int,int ,char*,int,int *) ;
 int LANG_NEUTRAL ;
 int MAKELANGID (int ,int ) ;
 int const O_NONBLOCK ;
 scalar_t__ SOCKET_ERROR ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int SUBLANG_DEFAULT ;
 int WSAGetLastError () ;
 int brain_logging (int ,int ,char*,...) ;
 scalar_t__ connect (int,struct sockaddr const*,int) ;
 int errno ;
 int fcntl (int,int ,int const) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int memset (char*,int ,int) ;
 int select_write_timeout (int,int const) ;
 int stderr ;
 char* strerror (int) ;

int brain_connect (int sockfd, const struct sockaddr *addr, socklen_t addrlen, const int timeout)
{
  const int old_mode = fcntl (sockfd, F_GETFL, 0);

  if (fcntl (sockfd, F_SETFL, old_mode | O_NONBLOCK) == -1)
  {
    brain_logging (stderr, 0, "fcntl: %s\n", strerror (errno));

    return -1;
  }

  connect (sockfd, addr, addrlen);

  const int rc_select = select_write_timeout (sockfd, timeout);

  if (rc_select == -1) return -1;

  if (rc_select == 0)
  {
    brain_logging (stderr, 0, "connect: timeout\n");

    return -1;
  }

  int so_error = 0;

  socklen_t len = sizeof (so_error);

  if (getsockopt (sockfd, SOL_SOCKET, SO_ERROR, &so_error, &len) == -1)
  {
    brain_logging (stderr, 0, "getsockopt: %s\n", strerror (errno));

    return -1;
  }

  if (fcntl (sockfd, F_SETFL, old_mode) == -1)
  {
    brain_logging (stderr, 0, "fcntl: %s\n", strerror (errno));

    return -1;
  }

  if (so_error != 0)
  {
    brain_logging (stderr, 0, "connect: %s\n", strerror (so_error));

    return -1;
  }



  return 0;
}
