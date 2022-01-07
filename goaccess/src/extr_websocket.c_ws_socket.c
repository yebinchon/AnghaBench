
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int ov ;
struct TYPE_2__ {int port; int host; } ;


 int AF_UNSPEC ;
 int FATAL (char*,int ) ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOMAXCONN ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,int ,int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int ) ;
 scalar_t__ getaddrinfo (int ,int ,struct addrinfo*,struct addrinfo**) ;
 int listen (int,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 TYPE_1__ wsconfig ;

__attribute__((used)) static void
ws_socket (int *listener)
{
  int ov = 1;
  struct addrinfo hints, *ai;


  memset (&hints, 0, sizeof hints);
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;

  if (getaddrinfo (wsconfig.host, wsconfig.port, &hints, &ai) != 0)
    FATAL ("Unable to set server: %s.", gai_strerror (errno));


  *listener = socket (ai->ai_family, ai->ai_socktype, ai->ai_protocol);


  if (setsockopt (*listener, SOL_SOCKET, SO_REUSEADDR, &ov, sizeof (ov)) == -1)
    FATAL ("Unable to set setsockopt: %s.", strerror (errno));


  if (bind (*listener, ai->ai_addr, ai->ai_addrlen) != 0)
    FATAL ("Unable to set bind: %s.", strerror (errno));
  freeaddrinfo (ai);


  if (listen (*listener, SOMAXCONN) == -1)
    FATAL ("Unable to listen: %s.", strerror (errno));
}
