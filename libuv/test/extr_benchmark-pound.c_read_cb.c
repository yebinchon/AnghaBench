
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int i; } ;


 int ASSERT (int ) ;
 scalar_t__ UV_ECONNRESET ;
 scalar_t__ UV_EOF ;
 int close_cb ;
 int conns_failed ;
 int fprintf (int ,char*,char*) ;
 TYPE_1__* p ;
 int printf (char*,int) ;
 int stderr ;
 int uv_close (int *,int ) ;
 char* uv_err_name (scalar_t__) ;

__attribute__((used)) static void read_cb(uv_stream_t* stream, ssize_t nread, const uv_buf_t* buf) {

  ASSERT(stream != ((void*)0));





  uv_close((uv_handle_t*)stream, close_cb);

  if (nread < 0) {
    if (nread == UV_EOF) {
      ;
    } else if (nread == UV_ECONNRESET) {
      conns_failed++;
    } else {
      fprintf(stderr, "read error %s\n", uv_err_name(nread));
      ASSERT(0);
    }
  }
}
