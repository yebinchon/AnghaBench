
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_shutdown_t ;


 int ASSERT (int) ;
 int shutdown_cb_called ;
 int shutdown_req ;

__attribute__((used)) static void shutdown_cb(uv_shutdown_t* req, int status) {
  ASSERT(req == &shutdown_req);
  shutdown_cb_called++;
}
