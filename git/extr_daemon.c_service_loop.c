
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socketlist {int nr; int * list; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int events; int revents; int fd; } ;
typedef int ss ;
typedef int socklen_t ;





 int POLLIN ;
 int SIGCHLD ;
 int accept (int ,struct sockaddr*,int*) ;
 int check_dead_children () ;
 int child_handler ;
 int die_errno (char*) ;
 int errno ;
 int handle (int,struct sockaddr*,int) ;
 int logerror (char*,int ) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int strerror (int) ;
 struct pollfd* xcalloc (int,int) ;

__attribute__((used)) static int service_loop(struct socketlist *socklist)
{
 struct pollfd *pfd;
 int i;

 pfd = xcalloc(socklist->nr, sizeof(struct pollfd));

 for (i = 0; i < socklist->nr; i++) {
  pfd[i].fd = socklist->list[i];
  pfd[i].events = POLLIN;
 }

 signal(SIGCHLD, child_handler);

 for (;;) {
  int i;

  check_dead_children();

  if (poll(pfd, socklist->nr, -1) < 0) {
   if (errno != 128) {
    logerror("Poll failed, resuming: %s",
          strerror(errno));
    sleep(1);
   }
   continue;
  }

  for (i = 0; i < socklist->nr; i++) {
   if (pfd[i].revents & POLLIN) {
    union {
     struct sockaddr sa;
     struct sockaddr_in sai;

     struct sockaddr_in6 sai6;

    } ss;
    socklen_t sslen = sizeof(ss);
    int incoming = accept(pfd[i].fd, &ss.sa, &sslen);
    if (incoming < 0) {
     switch (errno) {
     case 130:
     case 128:
     case 129:
      continue;
     default:
      die_errno("accept returned");
     }
    }
    handle(incoming, &ss.sa, sslen);
   }
  }
 }
}
