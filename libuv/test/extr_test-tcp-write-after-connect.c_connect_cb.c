
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_connect_t ;


 int ASSERT (int) ;
 int UV_ECONNREFUSED ;

__attribute__((used)) static void connect_cb(uv_connect_t *req, int status) {
  ASSERT(status == UV_ECONNREFUSED);
}
