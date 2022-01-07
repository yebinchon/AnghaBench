
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_shutdown_t ;


 int ASSERT (int) ;
 scalar_t__ completed_pingers ;
 int pinger_shutdown_cb_called ;

__attribute__((used)) static void pinger_shutdown_cb(uv_shutdown_t* req, int status) {
  ASSERT(status == 0);
  pinger_shutdown_cb_called++;





  ASSERT(completed_pingers == 0);
}
