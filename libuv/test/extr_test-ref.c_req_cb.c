
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int req_cb_called ;

__attribute__((used)) static void req_cb(uv_handle_t* req, int status) {
  req_cb_called++;
}
