
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_tcp_t ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_pipe_t ;


 int ERROR_INVALID_PARAMETER ;


 int assert (int ) ;
 int uv_pipe_accept (int *,TYPE_1__*) ;
 int uv_tcp_accept (int *,int *) ;
 int uv_translate_sys_error (int) ;

int uv_accept(uv_stream_t* server, uv_stream_t* client) {
  int err;

  err = ERROR_INVALID_PARAMETER;
  switch (server->type) {
    case 128:
      err = uv_tcp_accept((uv_tcp_t*)server, (uv_tcp_t*)client);
      break;
    case 129:
      err = uv_pipe_accept((uv_pipe_t*)server, client);
      break;
    default:
      assert(0);
  }

  return uv_translate_sys_error(err);
}
