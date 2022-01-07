
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_pipe_t ;


 int ASSERT (int) ;
 size_t NUM_CLIENTS ;
 size_t connect_cb_called ;
 size_t connection_cb_called ;
 int * connections ;
 int uv_accept (TYPE_1__*,TYPE_1__*) ;
 int uv_pipe_init (int ,int *,int ) ;
 int uv_stop (int ) ;

__attribute__((used)) static void connection_cb(uv_stream_t* server, int status) {
  int r;
  uv_pipe_t* conn;
  ASSERT(status == 0);

  conn = &connections[connection_cb_called];
  r = uv_pipe_init(server->loop, conn, 0);
  ASSERT(r == 0);

  r = uv_accept(server, (uv_stream_t*)conn);
  ASSERT(r == 0);

  if (++connection_cb_called == NUM_CLIENTS &&
      connect_cb_called == NUM_CLIENTS) {
    uv_stop(server->loop);
  }
}
