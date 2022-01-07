
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socketlist {int* list; scalar_t__ nr; int alloc; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; struct addrinfo* ai_next; int ai_flags; } ;
typedef int pbuf ;
typedef int on ;
typedef int hints ;


 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int AI_PASSIVE ;
 int ALLOC_GROW (int*,scalar_t__,int ) ;
 long FD_CLOEXEC ;
 int FD_SETSIZE ;
 int F_GETFD ;
 int F_SETFD ;
 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_V6ONLY ;
 int NI_MAXSERV ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,int ,int ) ;
 int close (int) ;
 int errno ;
 long fcntl (int,int ,long) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 char* ip2str (scalar_t__,int ,int ) ;
 scalar_t__ listen (int,int) ;
 int logerror (char*,...) ;
 int memset (struct addrinfo*,int ,int) ;
 int set_keep_alive (int) ;
 scalar_t__ set_reuse_addr (int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (scalar_t__,int ,int ) ;
 int strerror (int ) ;
 int xsnprintf (char*,int,char*,int) ;

__attribute__((used)) static int setup_named_sock(char *listen_addr, int listen_port, struct socketlist *socklist)
{
 int socknum = 0;
 char pbuf[NI_MAXSERV];
 struct addrinfo hints, *ai0, *ai;
 int gai;
 long flags;

 xsnprintf(pbuf, sizeof(pbuf), "%d", listen_port);
 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_protocol = IPPROTO_TCP;
 hints.ai_flags = AI_PASSIVE;

 gai = getaddrinfo(listen_addr, pbuf, &hints, &ai0);
 if (gai) {
  logerror("getaddrinfo() for %s failed: %s", listen_addr, gai_strerror(gai));
  return 0;
 }

 for (ai = ai0; ai; ai = ai->ai_next) {
  int sockfd;

  sockfd = socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
  if (sockfd < 0)
   continue;
  if (sockfd >= FD_SETSIZE) {
   logerror("Socket descriptor too large");
   close(sockfd);
   continue;
  }
  if (set_reuse_addr(sockfd)) {
   logerror("Could not set SO_REUSEADDR: %s", strerror(errno));
   close(sockfd);
   continue;
  }

  set_keep_alive(sockfd);

  if (bind(sockfd, ai->ai_addr, ai->ai_addrlen) < 0) {
   logerror("Could not bind to %s: %s",
     ip2str(ai->ai_family, ai->ai_addr, ai->ai_addrlen),
     strerror(errno));
   close(sockfd);
   continue;
  }
  if (listen(sockfd, 5) < 0) {
   logerror("Could not listen to %s: %s",
     ip2str(ai->ai_family, ai->ai_addr, ai->ai_addrlen),
     strerror(errno));
   close(sockfd);
   continue;
  }

  flags = fcntl(sockfd, F_GETFD, 0);
  if (flags >= 0)
   fcntl(sockfd, F_SETFD, flags | FD_CLOEXEC);

  ALLOC_GROW(socklist->list, socklist->nr + 1, socklist->alloc);
  socklist->list[socklist->nr++] = sockfd;
  socknum++;
 }

 freeaddrinfo(ai0);

 return socknum;
}
