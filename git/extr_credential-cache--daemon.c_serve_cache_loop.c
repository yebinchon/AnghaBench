
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct pollfd {int fd; int events; int revents; } ;
typedef int FILE ;


 scalar_t__ EINTR ;
 int POLLIN ;
 int accept (int,int *,int *) ;
 int check_expirations () ;
 int close (int) ;
 int die_errno (char*) ;
 int dup (int) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int serve_one_client (int *,int *) ;
 int warning_errno (char*) ;
 int * xfdopen (int,char*) ;

__attribute__((used)) static int serve_cache_loop(int fd)
{
 struct pollfd pfd;
 timestamp_t wakeup;

 wakeup = check_expirations();
 if (!wakeup)
  return 0;

 pfd.fd = fd;
 pfd.events = POLLIN;
 if (poll(&pfd, 1, 1000 * wakeup) < 0) {
  if (errno != EINTR)
   die_errno("poll failed");
  return 1;
 }

 if (pfd.revents & POLLIN) {
  int client, client2;
  FILE *in, *out;

  client = accept(fd, ((void*)0), ((void*)0));
  if (client < 0) {
   warning_errno("accept failed");
   return 1;
  }
  client2 = dup(client);
  if (client2 < 0) {
   warning_errno("dup failed");
   close(client);
   return 1;
  }

  in = xfdopen(client, "r");
  out = xfdopen(client2, "w");
  serve_one_client(in, out);
  fclose(in);
  fclose(out);
 }
 return 1;
}
