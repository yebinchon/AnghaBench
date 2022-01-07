
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_4__ {int * handle; } ;
typedef TYPE_1__ uv_connect_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 int connect_cb_called ;
 TYPE_1__ connect_req ;
 int read1_cb ;
 int timer_cb ;
 int tm ;
 int uv_buf_init (char*,int) ;
 int uv_default_loop () ;
 int uv_read_start (int *,int ,int ) ;
 int uv_timer_init (int ,int *) ;
 int uv_timer_start (int *,int ,int,int ) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write1_cb ;
 int write_req ;

__attribute__((used)) static void connect1_cb(uv_connect_t* req, int status) {
  uv_buf_t buf;
  uv_stream_t* stream;
  int r;

  ASSERT(req == &connect_req);
  ASSERT(status == 0);

  stream = req->handle;
  connect_cb_called++;

  r = uv_timer_init(uv_default_loop(), &tm);
  ASSERT(r == 0);

  r = uv_timer_start(&tm, timer_cb, 2000, 0);
  ASSERT(r == 0);

  buf = uv_buf_init("P", 1);
  r = uv_write(&write_req, stream, &buf, 1, write1_cb);
  ASSERT(r == 0);


  r = uv_read_start(stream, alloc_cb, read1_cb);
  ASSERT(r == 0);
}
