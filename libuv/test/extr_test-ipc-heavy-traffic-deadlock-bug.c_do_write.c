
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_buf_t ;
struct write_info {int write_req; int * buffers; } ;


 int ASSERT (int) ;
 int BUFFERS_PER_WRITE ;
 int BUFFER_CONTENT ;
 int BUFFER_SIZE ;
 struct write_info* malloc (int) ;
 int memset (int *,int ,int ) ;
 int uv_buf_init (int ,int ) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;

__attribute__((used)) static void do_write(uv_stream_t* handle) {
  struct write_info* write_info;
  uv_buf_t bufs[BUFFERS_PER_WRITE];
  size_t i;
  int r;

  write_info = malloc(sizeof *write_info);
  ASSERT(write_info != ((void*)0));

  for (i = 0; i < BUFFERS_PER_WRITE; i++) {
    memset(&write_info->buffers[i], BUFFER_CONTENT, BUFFER_SIZE);
    bufs[i] = uv_buf_init(write_info->buffers[i], BUFFER_SIZE);
  }

  r = uv_write(
      &write_info->write_req, handle, bufs, BUFFERS_PER_WRITE, write_cb);
  ASSERT(r == 0);
}
