
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_close_cb ;
typedef int uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ UV_EOF ;
 scalar_t__ free ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void sv_read_cb(uv_stream_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf) {
  ASSERT(nread == UV_EOF);
  uv_close((uv_handle_t*) handle, (uv_close_cb) free);
}
