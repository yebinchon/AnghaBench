
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;


 int uv__nonblock (int ,int) ;
 int uv__stream_fd (int *) ;

int uv_stream_set_blocking(uv_stream_t* handle, int blocking) {



  return uv__nonblock(uv__stream_fd(handle), !blocking);
}
