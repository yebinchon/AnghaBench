
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;


 int ASSERT (int) ;

__attribute__((used)) static void pipe_server_connection_cb(uv_stream_t* handle, int status) {



  ASSERT(status == 0);
}
