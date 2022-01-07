
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int close_cb_called ;

__attribute__((used)) static void close_cb(uv_handle_t *handle) {
  close_cb_called++;
}
