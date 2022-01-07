
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 scalar_t__ magic_cookie ;
 int seen_timer_handle ;
 int timer ;

__attribute__((used)) static void walk_cb(uv_handle_t* handle, void* arg) {
  ASSERT(arg == (void*)magic_cookie);

  if (handle == (uv_handle_t*)&timer) {
    seen_timer_handle++;
  } else {
    ASSERT(0 && "unexpected handle");
  }
}
