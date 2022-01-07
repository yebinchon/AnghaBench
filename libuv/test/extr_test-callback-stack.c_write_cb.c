
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int ASSERT (int) ;
 scalar_t__ nested ;
 int puts (char*) ;
 int timer ;
 int timer_cb ;
 int uv_default_loop () ;
 int uv_timer_init (int ,int *) ;
 int uv_timer_start (int *,int ,int,int ) ;
 int write_cb_called ;

__attribute__((used)) static void write_cb(uv_write_t* req, int status) {
  int r;

  ASSERT(status == 0);
  ASSERT(nested == 0 && "write_cb must be called from a fresh stack");

  puts("Data written. 500ms timeout...");





  nested++;
  r = uv_timer_init(uv_default_loop(), &timer);
  ASSERT(r == 0);
  r = uv_timer_start(&timer, timer_cb, 500, 0);
  ASSERT(r == 0);
  nested--;

  write_cb_called++;
}
