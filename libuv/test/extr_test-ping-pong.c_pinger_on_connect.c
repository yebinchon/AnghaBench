
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_5__ {TYPE_2__* handle; } ;
typedef TYPE_1__ uv_connect_t ;
typedef int pinger_t ;
struct TYPE_6__ {scalar_t__ data; } ;


 int ASSERT (int) ;
 int alloc_cb ;
 int pinger_on_connect_count ;
 int pinger_read_cb ;
 int pinger_write_ping (int *) ;
 scalar_t__ uv_is_closing (int *) ;
 int uv_is_readable (TYPE_2__*) ;
 int uv_is_writable (TYPE_2__*) ;
 int uv_read_start (int *,int ,int ) ;

__attribute__((used)) static void pinger_on_connect(uv_connect_t *req, int status) {
  pinger_t *pinger = (pinger_t*)req->handle->data;

  pinger_on_connect_count++;

  ASSERT(status == 0);

  ASSERT(1 == uv_is_readable(req->handle));
  ASSERT(1 == uv_is_writable(req->handle));
  ASSERT(0 == uv_is_closing((uv_handle_t *) req->handle));

  pinger_write_ping(pinger);

  uv_read_start((uv_stream_t*)(req->handle), alloc_cb, pinger_read_cb);
}
