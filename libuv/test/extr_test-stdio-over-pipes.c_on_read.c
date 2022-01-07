
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;
typedef int uv_stream_t ;
typedef int uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ UV_EOF ;
 int after_write ;
 int in ;
 int * malloc (int) ;
 scalar_t__ memcmp (char*,int ,int) ;
 int on_read_cb_called ;
 int output ;
 int output_used ;
 int uv_buf_init (int ,int) ;
 int uv_write (int *,int *,int *,int,int ) ;

__attribute__((used)) static void on_read(uv_stream_t* tcp, ssize_t nread, const uv_buf_t* rdbuf) {
  uv_write_t* req;
  uv_buf_t wrbuf;
  int r;

  ASSERT(nread > 0 || nread == UV_EOF);

  if (nread > 0) {
    output_used += nread;
    if (output_used == 12) {
      ASSERT(memcmp("hello world\n", output, 12) == 0);
      wrbuf = uv_buf_init(output, output_used);
      req = malloc(sizeof(*req));
      r = uv_write(req, (uv_stream_t*)&in, &wrbuf, 1, after_write);
      ASSERT(r == 0);
    }
  }

  on_read_cb_called++;
}
