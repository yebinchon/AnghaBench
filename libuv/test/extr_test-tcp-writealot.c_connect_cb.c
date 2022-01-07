
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_write_t ;
typedef int uv_stream_t ;
struct TYPE_4__ {int * handle; } ;
typedef TYPE_1__ uv_connect_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int CHUNKS_PER_WRITE ;
 scalar_t__ CHUNK_SIZE ;
 int WRITES ;
 int alloc_cb ;
 scalar_t__ bytes_sent ;
 int connect_cb_called ;
 TYPE_1__ connect_req ;
 int read_cb ;
 scalar_t__ send_buffer ;
 int shutdown_cb ;
 int shutdown_req ;
 int uv_buf_init (scalar_t__,scalar_t__) ;
 int uv_read_start (int *,int ,int ) ;
 int uv_shutdown (int *,int *,int ) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;
 int * write_reqs ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  uv_buf_t send_bufs[CHUNKS_PER_WRITE];
  uv_stream_t* stream;
  int i, j, r;

  ASSERT(req == &connect_req);
  ASSERT(status == 0);

  stream = req->handle;
  connect_cb_called++;


  for (i = 0; i < WRITES; i++) {
    uv_write_t* write_req = write_reqs + i;

    for (j = 0; j < CHUNKS_PER_WRITE; j++) {
      send_bufs[j] = uv_buf_init(send_buffer + bytes_sent, CHUNK_SIZE);
      bytes_sent += CHUNK_SIZE;
    }

    r = uv_write(write_req, stream, send_bufs, CHUNKS_PER_WRITE, write_cb);
    ASSERT(r == 0);
  }


  r = uv_shutdown(&shutdown_req, stream, shutdown_cb);
  ASSERT(r == 0);


  r = uv_read_start(stream, alloc_cb, read_cb);
  ASSERT(r == 0);
}
