
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int huge_timer1 ;
 int huge_timer2 ;
 int tiny_timer ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void tiny_timer_cb(uv_timer_t* handle) {
  ASSERT(handle == &tiny_timer);
  uv_close((uv_handle_t*) &tiny_timer, ((void*)0));
  uv_close((uv_handle_t*) &huge_timer1, ((void*)0));
  uv_close((uv_handle_t*) &huge_timer2, ((void*)0));
}
