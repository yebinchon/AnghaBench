
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sigaction {int * sa_handler; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; int ai_flags; int ai_protocol; int ai_socktype; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int INET6_ADDRSTRLEN ;
 int IPPROTO_TCP ;
 int SIGALRM ;
 int SOCK_STREAM ;
 int abort_query ;
 int alarm (int) ;
 int atoi (int ) ;
 int exit (int) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int getopt (int,char**,char*) ;
 int inet_ntop (scalar_t__,void*,char*,int) ;
 int optarg ;
 size_t optind ;
 int printf (char*,char*) ;
 int show_usage () ;
 int sigaction (int ,struct sigaction*,int *) ;

int main(int argc, char **argv)
{
 int timeout = 3;
 int opt;
 char ipaddr[INET6_ADDRSTRLEN];
 void *addr;
 struct addrinfo *res, *rp;
 struct sigaction sa = { .sa_handler = &abort_query };
 struct addrinfo hints = {
  .ai_family = AF_UNSPEC,
  .ai_socktype = SOCK_STREAM,
  .ai_protocol = IPPROTO_TCP,
  .ai_flags = 0
 };

 while ((opt = getopt(argc, argv, "46t:h")) > -1)
 {
  switch ((char)opt)
  {
   case '4':
    hints.ai_family = AF_INET;
    break;

   case '6':
    hints.ai_family = AF_INET6;
    break;

   case 't':
    timeout = atoi(optarg);
    if (timeout <= 0)
     show_usage();
    break;

   case 'h':
    show_usage();
    break;
  }
 }

 if (!argv[optind])
  show_usage();

 sigaction(SIGALRM, &sa, ((void*)0));
 alarm(timeout);

 if (getaddrinfo(argv[optind], ((void*)0), &hints, &res))
  exit(2);

 for (rp = res; rp != ((void*)0); rp = rp->ai_next)
 {
  addr = (rp->ai_family == AF_INET)
   ? (void *)&((struct sockaddr_in *)rp->ai_addr)->sin_addr
   : (void *)&((struct sockaddr_in6 *)rp->ai_addr)->sin6_addr
  ;

  if (!inet_ntop(rp->ai_family, addr, ipaddr, INET6_ADDRSTRLEN - 1))
   exit(3);

  printf("%s\n", ipaddr);
 }

 freeaddrinfo(res);
 exit(0);
}
