
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uv_udp_t ;
struct TYPE_7__ {scalar_t__ loop; int accepted_fd; int type; int io_watcher; TYPE_2__* queued_fds; int flags; } ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_8__ {int* fds; scalar_t__ offset; } ;
typedef TYPE_2__ uv__stream_queued_fds_t ;


 int POLLIN ;
 int UV_EAGAIN ;
 int UV_EINVAL ;
 int UV_HANDLE_BOUND ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_WRITABLE ;



 int assert (int) ;
 int memmove (int*,int*,int) ;
 int uv__close (int) ;
 int uv__free (TYPE_2__*) ;
 int uv__io_start (scalar_t__,int *,int ) ;
 int uv__stream_open (TYPE_1__*,int,int) ;
 int uv_udp_open (int *,int) ;

int uv_accept(uv_stream_t* server, uv_stream_t* client) {
  int err;

  assert(server->loop == client->loop);

  if (server->accepted_fd == -1)
    return UV_EAGAIN;

  switch (client->type) {
    case 130:
    case 129:
      err = uv__stream_open(client,
                            server->accepted_fd,
                            UV_HANDLE_READABLE | UV_HANDLE_WRITABLE);
      if (err) {

        uv__close(server->accepted_fd);
        goto done;
      }
      break;

    case 128:
      err = uv_udp_open((uv_udp_t*) client, server->accepted_fd);
      if (err) {
        uv__close(server->accepted_fd);
        goto done;
      }
      break;

    default:
      return UV_EINVAL;
  }

  client->flags |= UV_HANDLE_BOUND;

done:

  if (server->queued_fds != ((void*)0)) {
    uv__stream_queued_fds_t* queued_fds;

    queued_fds = server->queued_fds;


    server->accepted_fd = queued_fds->fds[0];


    assert(queued_fds->offset > 0);
    if (--queued_fds->offset == 0) {
      uv__free(queued_fds);
      server->queued_fds = ((void*)0);
    } else {

      memmove(queued_fds->fds,
              queued_fds->fds + 1,
              queued_fds->offset * sizeof(*queued_fds->fds));
    }
  } else {
    server->accepted_fd = -1;
    if (err == 0)
      uv__io_start(server->loop, &server->io_watcher, POLLIN);
  }
  return err;
}
