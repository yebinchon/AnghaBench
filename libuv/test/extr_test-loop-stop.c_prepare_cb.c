
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_prepare_t ;


 int ASSERT (int) ;
 scalar_t__ num_ticks ;
 scalar_t__ prepare_called ;
 int prepare_handle ;
 int uv_prepare_stop (int *) ;

__attribute__((used)) static void prepare_cb(uv_prepare_t* handle) {
  ASSERT(handle == &prepare_handle);
  prepare_called++;
  if (prepare_called == num_ticks)
    uv_prepare_stop(handle);
}
