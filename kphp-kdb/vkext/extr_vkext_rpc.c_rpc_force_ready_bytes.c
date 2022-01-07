
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int in_bytes; int sfd; } ;
struct pollfd {int fd; int events; int revents; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLNVAL ;
 int START_TIMER (int ) ;
 int assert (int) ;
 scalar_t__ errno ;
 int force_read ;
 int get_ms_timeout (double) ;
 int get_ready_bytes (struct rpc_server*,int) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int rpc_server_seterror (struct rpc_server*,char*,scalar_t__) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static int rpc_force_ready_bytes (struct rpc_server *server, int n, double timeout) {
  int __n = n;
  if (n <= server->in_bytes) { return server->in_bytes; }
  ADD_CNT(force_read);
  START_TIMER (force_read);
  n -= server->in_bytes;


  int sfd = server->sfd;
  assert (sfd >= 0);

  struct pollfd s;
  s.fd = sfd;
  s.events = POLLIN | POLLERR | POLLNVAL | POLLHUP;
  int t = 0;
  int first = 1;
  do {
    errno = 0;
    if (poll (&s, 1, t) <= 0) {
      if (first) {
        first = 0;
        continue;
      }
      rpc_server_seterror (server, errno ? strerror (errno) : "Timeout", errno);
      END_TIMER (force_read);
      return __n - n;
    }
    first = 0;
    int t = get_ready_bytes (server, n);
    if (t < 0) {
      return -1;
    }
    n -= t;
    if (n <= 0) { END_TIMER (force_read); return __n - n;}
    if (s.revents & (POLLERR | POLLNVAL | POLLHUP)) {
      return -1;
    }
  } while ((t = get_ms_timeout (timeout)));
  END_TIMER (force_read);
  return __n - n;
}
