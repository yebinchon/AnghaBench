
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_tcp_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_pipe_t ;
typedef int uv_connection_cb ;


 int ERROR_INVALID_PARAMETER ;


 int assert (int ) ;
 int uv_pipe_listen (int *,int,int ) ;
 int uv_tcp_listen (int *,int,int ) ;
 int uv_translate_sys_error (int) ;

int uv_listen(uv_stream_t* stream, int backlog, uv_connection_cb cb) {
  int err;

  err = ERROR_INVALID_PARAMETER;
  switch (stream->type) {
    case 128:
      err = uv_tcp_listen((uv_tcp_t*)stream, backlog, cb);
      break;
    case 129:
      err = uv_pipe_listen((uv_pipe_t*)stream, backlog, cb);
      break;
    default:
      assert(0);
  }

  return uv_translate_sys_error(err);
}
