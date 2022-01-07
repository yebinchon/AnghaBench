
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 int called_connect_cb ;
 scalar_t__ called_shutdown_cb ;
 int connect_req ;
 int qbuf ;
 int read_cb ;
 int shutdown_cb ;
 int shutdown_req ;
 int tcp ;
 int uv_read_start (int *,int ,int ) ;
 int uv_shutdown (int *,int *,int ) ;
 int uv_write (int *,int *,int *,int,int *) ;
 int write_req ;

__attribute__((used)) static void connect_cb(uv_connect_t *req, int status) {
  ASSERT(status == 0);
  ASSERT(req == &connect_req);


  uv_read_start((uv_stream_t*)&tcp, alloc_cb, read_cb);





  uv_write(&write_req, (uv_stream_t*) &tcp, &qbuf, 1, ((void*)0));


  uv_shutdown(&shutdown_req, (uv_stream_t*) &tcp, shutdown_cb);

  called_connect_cb++;
  ASSERT(called_shutdown_cb == 0);
}
