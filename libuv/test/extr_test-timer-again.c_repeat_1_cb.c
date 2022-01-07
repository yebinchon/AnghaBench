
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close_cb ;
 int fflush (int ) ;
 int fprintf (int ,char*,long) ;
 int repeat_1 ;
 int repeat_1_cb_called ;
 int repeat_2 ;
 int repeat_2_cb_allowed ;
 scalar_t__ start_time ;
 int stderr ;
 int uv_close (int *,int ) ;
 int uv_default_loop () ;
 scalar_t__ uv_now (int ) ;
 int uv_timer_again (int *) ;
 int uv_timer_get_repeat (int *) ;

__attribute__((used)) static void repeat_1_cb(uv_timer_t* handle) {
  int r;

  ASSERT(handle == &repeat_1);
  ASSERT(uv_timer_get_repeat((uv_timer_t*)handle) == 50);

  fprintf(stderr, "repeat_1_cb called after %ld ms\n",
          (long int)(uv_now(uv_default_loop()) - start_time));
  fflush(stderr);

  repeat_1_cb_called++;

  r = uv_timer_again(&repeat_2);
  ASSERT(r == 0);

  if (repeat_1_cb_called == 10) {
    uv_close((uv_handle_t*)handle, close_cb);


    repeat_2_cb_allowed = 1;
    return;
  }
}
