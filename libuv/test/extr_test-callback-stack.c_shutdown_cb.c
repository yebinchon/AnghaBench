
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_shutdown_t ;


 int ASSERT (int) ;
 scalar_t__ nested ;
 int shutdown_cb_called ;

__attribute__((used)) static void shutdown_cb(uv_shutdown_t* req, int status) {
  ASSERT(status == 0);
  ASSERT(nested == 0 && "shutdown_cb must be called from a fresh stack");

  shutdown_cb_called++;
}
