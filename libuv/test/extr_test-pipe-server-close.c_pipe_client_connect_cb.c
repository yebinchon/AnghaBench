
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int connect_req ;
 int pipe_client ;
 int pipe_client_connect_cb_called ;
 int pipe_close_cb ;
 int pipe_server ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void pipe_client_connect_cb(uv_connect_t* req, int status) {
  ASSERT(req == &connect_req);
  ASSERT(status == 0);

  pipe_client_connect_cb_called++;

  uv_close((uv_handle_t*) &pipe_client, pipe_close_cb);
  uv_close((uv_handle_t*) &pipe_server, pipe_close_cb);
}
