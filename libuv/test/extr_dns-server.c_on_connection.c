
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_tcp_t ;
typedef int uv_stream_t ;
struct TYPE_3__ {scalar_t__ prevbuf_rem; scalar_t__ prevbuf_pos; scalar_t__ prevbuf_ptr; } ;
struct TYPE_4__ {TYPE_1__ state; } ;
typedef TYPE_2__ dnshandle ;


 int ASSERT (int) ;
 int after_read ;
 int buf_alloc ;
 int loop ;
 scalar_t__ malloc (int) ;
 int uv_accept (int *,int *) ;
 int uv_read_start (int *,int ,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void on_connection(uv_stream_t* server, int status) {
  dnshandle* handle;
  int r;

  ASSERT(status == 0);

  handle = (dnshandle*) malloc(sizeof *handle);
  ASSERT(handle != ((void*)0));


  handle->state.prevbuf_ptr = 0;
  handle->state.prevbuf_pos = 0;
  handle->state.prevbuf_rem = 0;

  r = uv_tcp_init(loop, (uv_tcp_t*)handle);
  ASSERT(r == 0);

  r = uv_accept(server, (uv_stream_t*)handle);
  ASSERT(r == 0);

  r = uv_read_start((uv_stream_t*)handle, buf_alloc, after_read);
  ASSERT(r == 0);
}
