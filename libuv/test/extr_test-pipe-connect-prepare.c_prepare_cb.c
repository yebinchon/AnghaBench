
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_prepare_t ;


 int ASSERT (int) ;
 int BAD_PIPENAME ;
 int conn_req ;
 int connect_cb ;
 int pipe_handle ;
 int prepare_handle ;
 int uv_pipe_connect (int *,int *,int ,int ) ;

__attribute__((used)) static void prepare_cb(uv_prepare_t* handle) {
  ASSERT(handle == &prepare_handle);
  uv_pipe_connect(&conn_req, &pipe_handle, BAD_PIPENAME, connect_cb);
}
