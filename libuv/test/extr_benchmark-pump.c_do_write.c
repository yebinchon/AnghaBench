
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_write_t ;
typedef int uv_stream_t ;
struct TYPE_3__ {char* base; int len; } ;
typedef TYPE_1__ uv_buf_t ;


 int ASSERT (int) ;
 scalar_t__ req_alloc () ;
 int uv_write (int *,int *,TYPE_1__*,int,int ) ;
 int write_buffer ;
 int write_cb ;

__attribute__((used)) static void do_write(uv_stream_t* stream) {
  uv_write_t* req;
  uv_buf_t buf;
  int r;

  buf.base = (char*) &write_buffer;
  buf.len = sizeof write_buffer;

  req = (uv_write_t*) req_alloc();
  r = uv_write(req, stream, &buf, 1, write_cb);
  ASSERT(r == 0);
}
