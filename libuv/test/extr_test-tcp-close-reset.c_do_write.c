
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_buf_t ;


 unsigned int ARRAY_SIZE (int *) ;
 int ASSERT (int) ;
 int uv_buf_init (char*,int) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;
 int * write_reqs ;

__attribute__((used)) static void do_write(uv_tcp_t* handle) {
  uv_buf_t buf;
  unsigned i;
  int r;

  buf = uv_buf_init("PING", 4);
  for (i = 0; i < ARRAY_SIZE(write_reqs); i++) {
    r = uv_write(&write_reqs[i], (uv_stream_t*) handle, &buf, 1, write_cb);
    ASSERT(r == 0);
  }
}
