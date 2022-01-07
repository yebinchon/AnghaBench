
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 int conn ;
 int connect_cb_called ;
 int read_cb ;
 int uv_read_start (int *,int ,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  int r;

  ASSERT(status == 0);
  connect_cb_called++;

  r = uv_read_start((uv_stream_t*)&conn, alloc_cb, read_cb);
  ASSERT(r == 0);
}
