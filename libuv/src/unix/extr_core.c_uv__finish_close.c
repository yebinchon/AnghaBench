
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_udp_t ;
typedef int uv_stream_t ;
struct TYPE_5__ {int flags; int type; int (* close_cb ) (TYPE_1__*) ;int handle_queue; } ;
typedef TYPE_1__ uv_handle_t ;


 int QUEUE_REMOVE (int *) ;




 int UV_HANDLE_CLOSED ;
 int UV_HANDLE_CLOSING ;
 int assert (int) ;
 int stub1 (TYPE_1__*) ;
 int uv__handle_unref (TYPE_1__*) ;
 int uv__stream_destroy (int *) ;
 int uv__udp_finish_close (int *) ;

__attribute__((used)) static void uv__finish_close(uv_handle_t* handle) {
  assert(handle->flags & UV_HANDLE_CLOSING);
  assert(!(handle->flags & UV_HANDLE_CLOSED));
  handle->flags |= UV_HANDLE_CLOSED;

  switch (handle->type) {
    case 134:
    case 140:
    case 137:
    case 141:
    case 130:
    case 133:
    case 139:
    case 138:
    case 135:
    case 132:
      break;

    case 136:
    case 131:
    case 129:
      uv__stream_destroy((uv_stream_t*)handle);
      break;

    case 128:
      uv__udp_finish_close((uv_udp_t*)handle);
      break;

    default:
      assert(0);
      break;
  }

  uv__handle_unref(handle);
  QUEUE_REMOVE(&handle->handle_queue);

  if (handle->close_cb) {
    handle->close_cb(handle);
  }
}
