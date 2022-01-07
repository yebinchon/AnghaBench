
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cb; int fd; } ;
struct TYPE_5__ {int delayed_error; unsigned long flags; TYPE_3__ io_watcher; int loop; int connection_cb; } ;
typedef TYPE_1__ uv_tcp_t ;
typedef int uv_connection_cb ;


 int AF_INET ;
 int POLLIN ;
 unsigned long UV_HANDLE_BOUND ;
 unsigned long UV_HANDLE_TCP_SINGLE_ACCEPT ;
 int UV__ERR (int ) ;
 scalar_t__ atoi (char const*) ;
 int errno ;
 char* getenv (char*) ;
 scalar_t__ listen (int ,int) ;
 int maybe_new_socket (TYPE_1__*,int ,unsigned long) ;
 int uv__io_start (int ,TYPE_3__*,int ) ;
 int uv__server_io ;

int uv_tcp_listen(uv_tcp_t* tcp, int backlog, uv_connection_cb cb) {
  static int single_accept = -1;
  unsigned long flags;
  int err;

  if (tcp->delayed_error)
    return tcp->delayed_error;

  if (single_accept == -1) {
    const char* val = getenv("UV_TCP_SINGLE_ACCEPT");
    single_accept = (val != ((void*)0) && atoi(val) != 0);
  }

  if (single_accept)
    tcp->flags |= UV_HANDLE_TCP_SINGLE_ACCEPT;

  flags = 0;







  err = maybe_new_socket(tcp, AF_INET, flags);
  if (err)
    return err;

  if (listen(tcp->io_watcher.fd, backlog))
    return UV__ERR(errno);

  tcp->connection_cb = cb;
  tcp->flags |= UV_HANDLE_BOUND;


  tcp->io_watcher.cb = uv__server_io;
  uv__io_start(tcp->loop, &tcp->io_watcher, POLLIN);

  return 0;
}
