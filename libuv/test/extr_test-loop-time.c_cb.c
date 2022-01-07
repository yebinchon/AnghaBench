
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int uv_close (int *,int *) ;

__attribute__((used)) static void cb(uv_timer_t* timer) {
  uv_close((uv_handle_t*)timer, ((void*)0));
}
