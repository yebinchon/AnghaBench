
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * handle; } ;
typedef TYPE_1__ uv_write_t ;
typedef int uv_stream_t ;


 int ASSERT (int) ;
 int peer_handle ;

__attribute__((used)) static void write_cb(uv_write_t* req, int status) {
  ASSERT(req->handle == (uv_stream_t*) &peer_handle);
  ASSERT(0 == status);
}
