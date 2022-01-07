
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_connect_t ;


 int ASSERT (int) ;
 int UV_ECANCELED ;
 int connect_cb_called ;
 int connect_req ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  ASSERT(req == &connect_req);
  ASSERT(status == UV_ECANCELED);
  connect_cb_called++;
}
