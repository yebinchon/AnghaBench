
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_connect_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 int connect_cb_called ;
 int free (TYPE_1__*) ;
 int read_cb ;
 int uv_read_start (int *,int ,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  int r;

  ASSERT(req != ((void*)0));
  ASSERT(status == 0);



  r = uv_read_start((uv_stream_t*)(req->handle), alloc_cb, read_cb);
  ASSERT(r == 0);

  connect_cb_called++;

  free(req);
}
