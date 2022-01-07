
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int UV_EPIPE ;
 int buf ;
 int close_cb ;
 int free (int ) ;
 int pipe_hdl ;
 int signal_hdl ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void write_cb(uv_write_t* req, int status) {
  ASSERT(req != ((void*)0));
  ASSERT(status == UV_EPIPE);
  free(buf);
  uv_close((uv_handle_t *) &pipe_hdl, close_cb);
  uv_close((uv_handle_t *) &signal_hdl, close_cb);
}
