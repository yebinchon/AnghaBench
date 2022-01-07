
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_5__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_connect_t ;
struct TYPE_6__ {char* base; int len; } ;
typedef TYPE_2__ uv_buf_t ;


 int ASSERT (int) ;
 int FATAL (char*) ;
 int MESSAGE ;
 int connect_cb_called ;
 scalar_t__ nested ;
 int puts (char*) ;
 scalar_t__ uv_write (int *,int *,TYPE_2__*,int,int ) ;
 int write_cb ;
 int write_req ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  uv_buf_t buf;

  puts("Connected. Write some data to echo server...");

  ASSERT(status == 0);
  ASSERT(nested == 0 && "connect_cb must be called from a fresh stack");

  nested++;

  buf.base = (char*) &MESSAGE;
  buf.len = sizeof MESSAGE;

  if (uv_write(&write_req, (uv_stream_t*)req->handle, &buf, 1, write_cb)) {
    FATAL("uv_write failed");
  }

  nested--;

  connect_cb_called++;
}
