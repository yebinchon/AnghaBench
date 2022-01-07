
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {scalar_t__ sfd; scalar_t__ out_bytes; scalar_t__ out_rptr; scalar_t__ out_wptr; scalar_t__ out_buf; } ;
struct pollfd {scalar_t__ fd; int events; } ;
struct iovec {scalar_t__ iov_base; scalar_t__ iov_len; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int POLLOUT ;
 scalar_t__ RPC_OUT_BUF_SIZE ;
 int START_TIMER (int ) ;
 int assert (int) ;
 int errno ;
 int get_ms_timeout (double) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int rpc_server_failure (struct rpc_server*) ;
 int rpc_server_seterror (struct rpc_server*,int ,int ) ;
 int send ;
 int strerror (int ) ;
 int write ;
 int writev (scalar_t__,struct iovec*,int) ;

__attribute__((used)) static int rpc_sock_write (struct rpc_server *server, double timeout, char *buf, int buf_len, int min_bytes) {
  ADD_CNT (write);
  START_TIMER (write);
  if (server->sfd < 0) {
    END_TIMER (write);
    return -1;
  }
  int r = 0;
  int first = 1;

  struct pollfd s;
  s.fd = server->sfd;
  s.events = POLLOUT;
  static struct iovec t[3];
  int ss, sf;
  if (server->out_bytes) {
    if (server->out_bytes != RPC_OUT_BUF_SIZE && server->out_rptr <= server->out_wptr) {
      ss = 1;
      t[1].iov_base = server->out_rptr;
      t[1].iov_len = server->out_wptr - server->out_rptr;
    } else {
      ss = 0;
      t[0].iov_base = server->out_rptr;
      t[0].iov_len = server->out_buf + RPC_OUT_BUF_SIZE - server->out_rptr;
      t[1].iov_base = server->out_buf;
      t[1].iov_len = server->out_wptr - server->out_buf;
    }
  } else {
    ss = 2;
  }
  if (buf && buf_len) {
    sf = 3;
    t[2].iov_base = buf;
    t[2].iov_len = buf_len;
  } else {
    sf = 2;
  }
  if (!(sf - ss)) {
    END_TIMER (write);
    return 0;
  }
  int tt = 0;
  do {
    if (poll (&s, 1, tt) <= 0) {
      if (first) {
        first = 0;
        continue;
      }
      END_TIMER (write);
      return r;
    }
    first = 0;
    ADD_CNT (send);
    int x = writev (server->sfd, t + ss, sf - ss);
    if (x < 0) {
      rpc_server_seterror (server, strerror (errno), errno);
      rpc_server_failure (server);
      END_TIMER (write);
      return -1;
    }
    r += x;
    if (x && ss == 0) {
      if (x >= t[0].iov_len) {
        x -= t[0].iov_len;
        server->out_rptr = server->out_buf;
        server->out_bytes -= t[0].iov_len;
        ss ++;
      } else {
        t[0].iov_len -= x;
        t[0].iov_base += x;
        server->out_rptr += x;
        server->out_bytes -= x;
        x = 0;
      }
    }
    if (x && ss == 1) {
      if (x >= t[1].iov_len) {
        x -= t[1].iov_len;
        server->out_rptr = server->out_wptr = server->out_buf;
        server->out_bytes = 0;
        ss ++;
      } else {
        t[1].iov_len -= x;
        t[1].iov_base += x;
        server->out_rptr += x;
        server->out_bytes -= x;
        x = 0;
      }
    }
    if (x && ss == 2) {
      if (x >= t[2].iov_len) {
        assert (x == t[2].iov_len);


        break;
      } else {


        t[2].iov_len -= x;
        t[2].iov_base += x;
      }
    }
  } while (r < min_bytes && ss < sf && (tt = get_ms_timeout (timeout)));
  END_TIMER (write);
  return r;
}
