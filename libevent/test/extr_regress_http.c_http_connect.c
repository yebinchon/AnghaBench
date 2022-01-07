
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct evutil_addrinfo {size_t ai_addrlen; struct sockaddr* ai_addr; int ai_socktype; int ai_family; } ;
typedef int strport ;
typedef int evutil_socket_t ;
typedef int ev_uint16_t ;
typedef int ai ;


 int AF_INET ;
 scalar_t__ EINPROGRESS ;
 int NI_MAXSERV ;
 int SOCK_STREAM ;
 int WSAEINPROGRESS ;
 int WSAEINVAL ;
 int WSAEWOULDBLOCK ;
 int WSAGetLastError () ;
 int connect (int,struct sockaddr*,size_t) ;
 scalar_t__ errno ;
 int event_err (int,char*) ;
 int event_warn (char*) ;
 int evutil_freeaddrinfo (struct evutil_addrinfo*) ;
 scalar_t__ evutil_getaddrinfo (char const*,char*,struct evutil_addrinfo*,struct evutil_addrinfo**) ;
 int evutil_make_socket_nonblocking (int) ;
 int evutil_snprintf (char*,int,char*,int ) ;
 int memset (struct evutil_addrinfo*,int ,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static evutil_socket_t
http_connect(const char *address, ev_uint16_t port)
{

 struct evutil_addrinfo ai, *aitop;
 char strport[NI_MAXSERV];

 struct sockaddr *sa;
 size_t slen;
 evutil_socket_t fd;

 memset(&ai, 0, sizeof(ai));
 ai.ai_family = AF_INET;
 ai.ai_socktype = SOCK_STREAM;
 evutil_snprintf(strport, sizeof(strport), "%d", port);
 if (evutil_getaddrinfo(address, strport, &ai, &aitop) != 0) {
  event_warn("getaddrinfo");
  return (-1);
 }
 sa = aitop->ai_addr;
 slen = aitop->ai_addrlen;

 fd = socket(AF_INET, SOCK_STREAM, 0);
 if (fd == -1)
  event_err(1, "socket failed");

 evutil_make_socket_nonblocking(fd);
 if (connect(fd, sa, slen) == -1) {






  if (errno != EINPROGRESS)
   event_err(1, "connect failed");

 }

 evutil_freeaddrinfo(aitop);

 return (fd);
}
