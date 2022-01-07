
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int ) ;
 int close_cb_called ;
 scalar_t__ nested ;

__attribute__((used)) static void close_cb(uv_handle_t* handle) {
  ASSERT(nested == 0 && "close_cb must be called from a fresh stack");

  close_cb_called++;
}
