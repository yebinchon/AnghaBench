
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int hints ;
typedef int fd_set ;


 scalar_t__ EINPROGRESS ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int INVALID_SOCKET ;
 int IPPROTO_TCP ;
 int O_NONBLOCK ;
 int PF_UNSPEC ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 scalar_t__ WSAEINPROGRESS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ asprintf (char**,char*,int) ;
 int close (int) ;
 int closesocket (int) ;
 scalar_t__ connect (int,int ,int ) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,...) ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ ioctlsocket (int,int ,int*) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int socket (int ,int ,int ) ;

int sm_connect_tcp(const char *hostname, int port) {
  struct addrinfo hints;
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = PF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;
  struct addrinfo *res0;
  char *port_str = ((void*)0);
  if (asprintf(&port_str, "%d", port) < 0) {
    return -1;
  }
  int ret = getaddrinfo(hostname, port_str, &hints, &res0);
  free(port_str);
  if (ret) {
    perror("Unknown host");
    return (ret < 0 ? ret : -1);
  }
  ret = -1;
  int fd = 0;
  struct addrinfo *res;
  for (res = res0; res; res = res->ai_next) {
    if (fd > 0) {
      close(fd);
    }
    fd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
    if (fd < 0) {
      continue;
    }

    int opts = fcntl(fd, F_GETFL);
    if (opts < 0 ||
        fcntl(fd, F_SETFL, (opts | O_NONBLOCK)) < 0 ||
        ((connect(fd, res->ai_addr, res->ai_addrlen) < 0) ==
         (errno != EINPROGRESS))) {
      continue;
    }

    struct timeval to;
    to.tv_sec = 0;
    to.tv_usec= 500*1000;
    fd_set error_fds;
    FD_ZERO(&error_fds);
    FD_SET(fd, &error_fds);
    if (fcntl(fd, F_SETFL, opts) < 0) {
      continue;
    }
    int is_error = select(fd + 1, &error_fds, ((void*)0), ((void*)0), &to);
    if (is_error) {
      continue;
    }

    if (fcntl(fd, F_SETFL, (opts | O_NONBLOCK)) < 0) {
      continue;
    }

    ret = fd;
    break;
  }





  if (fd > 0 && ret <= 0) {
    close(fd);
  }

  freeaddrinfo(res0);
  return ret;
}
