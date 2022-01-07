
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;
typedef int uv_write_cb ;
typedef int uv_stream_t ;
typedef int uv_buf_t ;


 int uv_write2 (int *,int *,int const*,unsigned int,int *,int ) ;

int uv_write(uv_write_t* req,
             uv_stream_t* handle,
             const uv_buf_t bufs[],
             unsigned int nbufs,
             uv_write_cb cb) {
  return uv_write2(req, handle, bufs, nbufs, ((void*)0), cb);
}
