
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 int peer_handle ;
 int read_cb ;
 scalar_t__ uv_accept (int *,int *) ;
 int uv_buf_init (char*,int) ;
 scalar_t__ uv_read_start (int *,int ,int ) ;
 scalar_t__ uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;
 int write_req ;

__attribute__((used)) static void connection_cb(uv_stream_t* handle, int status) {
  uv_buf_t buf;

  buf = uv_buf_init("PING", 4);

  ASSERT(0 == status);
  ASSERT(0 == uv_accept(handle, (uv_stream_t*) &peer_handle));
  ASSERT(0 == uv_read_start((uv_stream_t*) &peer_handle, alloc_cb, read_cb));
  ASSERT(0 == uv_write(&write_req, (uv_stream_t*) &peer_handle,
                       &buf, 1, write_cb));
}
