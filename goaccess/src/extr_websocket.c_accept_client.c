
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_storage {int ss_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int raddr ;
struct TYPE_5__ {int listener; int remote_ip; } ;
typedef TYPE_1__ WSClient ;
typedef int GSLList ;


 int FATAL (char*,int ) ;
 int INET6_ADDRSTRLEN ;
 int LOG (char*) ;
 int accept (int,struct sockaddr*,int*) ;
 int errno ;
 int inet_ntop (int ,void const*,int ,int ) ;
 int * list_create (TYPE_1__*) ;
 int * list_insert_prepend (int *,TYPE_1__*) ;
 TYPE_1__* new_wsclient () ;
 int set_nonblocking (int) ;
 int strerror (int ) ;
 void* ws_get_raddr (struct sockaddr*) ;

__attribute__((used)) static int
accept_client (int listener, GSLList ** colist)
{
  WSClient *client;
  struct sockaddr_storage raddr;
  int newfd;
  const void *src = ((void*)0);
  socklen_t alen;

  alen = sizeof (raddr);
  if ((newfd = accept (listener, (struct sockaddr *) &raddr, &alen)) == -1)
    FATAL ("Unable to set accept: %s.", strerror (errno));

  if (newfd == -1) {
    LOG (("Unable to accept: %s.", strerror (errno)));
    return newfd;
  }
  src = ws_get_raddr ((struct sockaddr *) &raddr);


  client = new_wsclient ();
  client->listener = newfd;
  inet_ntop (raddr.ss_family, src, client->remote_ip, INET6_ADDRSTRLEN);


  if (*colist == ((void*)0))
    *colist = list_create (client);
  else
    *colist = list_insert_prepend (*colist, client);


  set_nonblocking (client->listener);

  return newfd;
}
