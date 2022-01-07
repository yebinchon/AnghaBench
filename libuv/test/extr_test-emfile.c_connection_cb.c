
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;


 int ASSERT (int) ;

__attribute__((used)) static void connection_cb(uv_stream_t* server_handle, int status) {
  ASSERT(0 && "connection_cb should not be called.");
}
