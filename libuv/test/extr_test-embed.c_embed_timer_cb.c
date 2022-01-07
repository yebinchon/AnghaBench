
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int embed_async ;
 int embed_closed ;
 int embed_timer_called ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void embed_timer_cb(uv_timer_t* timer) {
  embed_timer_called++;
  embed_closed = 1;

  uv_close((uv_handle_t*) &embed_async, ((void*)0));
}
