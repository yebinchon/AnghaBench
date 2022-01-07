
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
struct TYPE_2__ {scalar_t__ write_queue_size; } ;


 int ASSERT (int) ;
 int UV_ECONNABORTED ;
 int UV_ECONNRESET ;
 int UV_EPIPE ;
 TYPE_1__ client ;
 int close_cb_called ;
 int fprintf (int ,char*,int,char*) ;
 int stderr ;
 int uv_buf_init (char*,int) ;
 char* uv_strerror (int) ;
 int uv_try_write (int *,int *,int) ;

__attribute__((used)) static void incoming_close_cb(uv_handle_t* handle) {
  uv_buf_t buf;
  int r = 1;

  close_cb_called++;

  buf = uv_buf_init("meow", 4);
  while (r > 0)
    r = uv_try_write((uv_stream_t*) &client, &buf, 1);
  fprintf(stderr, "uv_try_write error: %d %s\n", r, uv_strerror(r));
  ASSERT(r == UV_EPIPE || r == UV_ECONNABORTED || r == UV_ECONNRESET);
  ASSERT(client.write_queue_size == 0);
}
