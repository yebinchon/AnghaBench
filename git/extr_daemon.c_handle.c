
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct child_process {int in; int out; int argv; int env_array; } ;
typedef int socklen_t ;
typedef int buf ;
struct TYPE_2__ {int argv; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 struct child_process CHILD_PROCESS_INIT ;
 int add_child (struct child_process*,struct sockaddr*,int ) ;
 int argv_array_pushf (int *,char*,char*) ;
 int check_dead_children () ;
 TYPE_1__ cld_argv ;
 int close (int) ;
 int dup (int) ;
 int inet_ntop (scalar_t__,int *,char*,int) ;
 int kill_some_child () ;
 scalar_t__ live_children ;
 int logerror (char*) ;
 scalar_t__ max_connections ;
 char* ntohs (int ) ;
 int sleep (int) ;
 scalar_t__ start_command (struct child_process*) ;

__attribute__((used)) static void handle(int incoming, struct sockaddr *addr, socklen_t addrlen)
{
 struct child_process cld = CHILD_PROCESS_INIT;

 if (max_connections && live_children >= max_connections) {
  kill_some_child();
  sleep(1);
  check_dead_children();
  if (live_children >= max_connections) {
   close(incoming);
   logerror("Too many children, dropping connection");
   return;
  }
 }

 if (addr->sa_family == AF_INET) {
  char buf[128] = "";
  struct sockaddr_in *sin_addr = (void *) addr;
  inet_ntop(addr->sa_family, &sin_addr->sin_addr, buf, sizeof(buf));
  argv_array_pushf(&cld.env_array, "REMOTE_ADDR=%s", buf);
  argv_array_pushf(&cld.env_array, "REMOTE_PORT=%d",
     ntohs(sin_addr->sin_port));

 } else if (addr->sa_family == AF_INET6) {
  char buf[128] = "";
  struct sockaddr_in6 *sin6_addr = (void *) addr;
  inet_ntop(AF_INET6, &sin6_addr->sin6_addr, buf, sizeof(buf));
  argv_array_pushf(&cld.env_array, "REMOTE_ADDR=[%s]", buf);
  argv_array_pushf(&cld.env_array, "REMOTE_PORT=%d",
     ntohs(sin6_addr->sin6_port));

 }

 cld.argv = cld_argv.argv;
 cld.in = incoming;
 cld.out = dup(incoming);

 if (start_command(&cld))
  logerror("unable to fork");
 else
  add_child(&cld, addr, addrlen);
}
