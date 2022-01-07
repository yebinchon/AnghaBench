
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;


 int ASSERT (int) ;
 size_t NUM_WRITES ;
 int UV_RUN_DEFAULT ;
 scalar_t__ XFER_SIZE ;
 int alloc_cb ;
 scalar_t__ bytes_read ;
 scalar_t__ bytes_written ;
 int do_write (TYPE_1__*) ;
 int read_cb ;
 int uv_read_start (TYPE_1__*,int ,int ) ;
 int uv_run (int ,int ) ;

__attribute__((used)) static void do_writes_and_reads(uv_stream_t* handle) {
  size_t i;
  int r;

  bytes_written = 0;
  bytes_read = 0;

  for (i = 0; i < NUM_WRITES; i++) {
    do_write(handle);
  }

  r = uv_read_start(handle, alloc_cb, read_cb);
  ASSERT(r == 0);

  r = uv_run(handle->loop, UV_RUN_DEFAULT);
  ASSERT(r == 0);

  ASSERT(bytes_written == XFER_SIZE);
  ASSERT(bytes_read == XFER_SIZE);
}
