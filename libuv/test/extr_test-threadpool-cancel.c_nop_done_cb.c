
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_work_t ;


 int ASSERT (int) ;
 int UV_ECANCELED ;
 int done_cb_called ;

__attribute__((used)) static void nop_done_cb(uv_work_t* req, int status) {
  ASSERT(status == UV_ECANCELED);
  done_cb_called++;
}
