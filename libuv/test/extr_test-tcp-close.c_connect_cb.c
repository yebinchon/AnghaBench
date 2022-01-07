
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_connect_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int NUM_WRITE_REQS ;
 int close_cb ;
 int * malloc (int) ;
 int tcp_handle ;
 int uv_buf_init (char*,int) ;
 int uv_close (int *,int ) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;

__attribute__((used)) static void connect_cb(uv_connect_t* conn_req, int status) {
  uv_write_t* req;
  uv_buf_t buf;
  int i, r;

  buf = uv_buf_init("PING", 4);
  for (i = 0; i < NUM_WRITE_REQS; i++) {
    req = malloc(sizeof *req);
    ASSERT(req != ((void*)0));

    r = uv_write(req, (uv_stream_t*)&tcp_handle, &buf, 1, write_cb);
    ASSERT(r == 0);
  }

  uv_close((uv_handle_t*)&tcp_handle, close_cb);
}
